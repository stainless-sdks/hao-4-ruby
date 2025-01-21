# frozen_string_literal: true

module Unit
  # @private
  #
  class BaseClient
    MAX_REDIRECTS = 20 # from whatwg fetch spec

    # @private
    #
    # @!attribute requester
    #
    #   @return [Unit::PooledNetRequester]
    attr_accessor :requester

    # @private
    #
    # @param base_url [String]
    # @param timeout [Float]
    # @param max_retries [Integer]
    # @param initial_retry_delay [Float]
    # @param max_retry_delay [Float]
    # @param headers [Hash{String => String}]
    # @param idempotency_header [String, nil]
    #
    def initialize(
      base_url:,
      timeout: 0.0,
      max_retries: 0,
      initial_retry_delay: 0.0,
      max_retry_delay: 0.0,
      headers: {},
      idempotency_header: nil
    )
      @requester = Unit::PooledNetRequester.new
      @headers = Unit::Util.normalized_headers(
        {
          "X-Stainless-Lang" => "ruby",
          "X-Stainless-Package-Version" => Unit::VERSION,
          "X-Stainless-Runtime" => RUBY_ENGINE,
          "X-Stainless-Runtime-Version" => RUBY_ENGINE_VERSION,
          "Content-Type" => "application/json",
          "Accept" => "application/json"
        },
        headers
      )
      @base_url = Unit::Util.parse_uri(base_url)
      @idempotency_header = idempotency_header&.to_s&.downcase
      @max_retries = max_retries
      @timeout = timeout
      @initial_retry_delay = initial_retry_delay
      @max_retry_delay = max_retry_delay
    end

    # @private
    #
    # @return [Hash{String => String}]
    #
    private def auth_headers = {}

    # @private
    #
    # @return [String]
    #
    private def generate_idempotency_key = "stainless-ruby-retry-#{SecureRandom.uuid}"

    # @private
    #
    # @param req [Hash{Symbol => Object}]
    # @param opts [Unit::RequestOptions, Hash{Symbol => Object}]
    #
    # @return [Hash{Symbol => Object}]
    #
    private def build_request(req, opts)
      options = Unit::Util.deep_merge(req, opts)
      method, uninterpolated_path = options.fetch_values(:method, :path)
      path = Unit::Util.interpolate_path(uninterpolated_path)

      headers = Unit::Util.normalized_headers(
        @headers,
        auth_headers,
        *options.values_at(:headers, :extra_headers)
      )

      if @idempotency_header &&
         !headers.key?(@idempotency_header) &&
         !Net::HTTP::IDEMPOTENT_METHODS_.include?(method.to_s.upcase)
        headers[@idempotency_header] = options.fetch(:idempotency_key) { generate_idempotency_key }
      end

      unless headers.key?("x-stainless-retry-count")
        headers["x-stainless-retry-count"] = "0"
      end

      headers.reject! { |_, v| v.to_s.empty? }

      body =
        case method
        in :get | :head | :options | :trace
          nil
        else
          values = options.values_at(:body, :extra_body).compact
          Unit::Util.deep_merge(*values)
        end

      encoded =
        case [headers["content-type"], body]
        in ["application/json", Hash | Array]
          JSON.fast_generate(body)
        else
          body
        end

      url = Unit::Util.join_parsed_uri(@base_url, {**options, path: path})
      timeout = options.fetch(:timeout, @timeout)
      {method: method, url: url, headers: headers, body: encoded, timeout: timeout}
    end

    # @private
    #
    # @param response [Net::HTTPResponse]
    # @param suppress_error [Boolean]
    #
    # @raise [JSON::ParserError]
    # @return [Object]
    #
    private def parse_body(response, suppress_error: false)
      case response.content_type
      in "application/json"
        begin
          JSON.parse(response.body, symbolize_names: true)
        rescue JSON::ParserError => e
          raise e unless suppress_error
          response.body
        end
      else
        # TODO: parsing other response types
        response.body
      end
    end

    # @private
    #
    # @param status [Integer]
    # @param headers [Hash{String => String}]
    #
    # @return [Boolean]
    #
    private def should_retry?(status, headers:)
      coerced = Unit::Util.coerce_boolean(headers["x-should-retry"])
      case [coerced, status]
      in [true | false, _]
        coerced
      in [_, 408 | 409 | 429 | (500..)]
        # retry on:
        # 408: timeouts
        # 409: locks
        # 429: rate limits
        # 500+: unknown errors
        true
      else
        false
      end
    end

    # @private
    #
    # @param headers [Hash{String => String}]
    # @param retry_count [Integer]
    #
    # @return [Float]
    #
    private def retry_delay(headers, retry_count:)
      # Note the `retry-after-ms` header may not be standard, but is a good idea and we'd like proactive support for it.
      span = Float(headers["retry-after-ms"], exception: false)&.then { _1 / 1000 }
      return span if span

      retry_header = headers["retry-after"]
      return span if (span = Float(retry_header, exception: false))

      span = retry_header && Unit::Util.suppress(ArgumentError) do
        Time.httpdate(retry_header) - Time.now
      end
      return span if span

      scale = retry_count**2
      jitter = 1 - (0.25 * rand)
      (@initial_retry_delay * scale * jitter).clamp(0, @max_retry_delay)
    end

    # @private
    #
    # @param request [Hash{Symbol => Object}]
    #   @option options [Symbol] :method
    #   @option options [Hash{String => String}] :headers
    #   @option options [String, nil] :body
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param location_header [String]
    #
    # @raise [Unit::APIError]
    # @return [Hash{Symbol => Object}]
    #
    private def follow_redirect(request, url:, status:, location_header:)
      method, headers = request.fetch_values(:method, :headers)
      location =
        Unit::Util.suppress(ArgumentError) do
          URI.join(url, location_header)
        end

      unless location
        message = "Server responded with status #{status} but no valid location header."
        raise Unit::APIConnectionError.new(url: url, message: message)
      end

      request = {**request, url: location}

      case [url.scheme, location.scheme]
      in ["https", "http"]
        message = "Tried to redirect to a insecure URL"
        raise Unit::APIConnectionError.new(url: url, message: message)
      else
        nil
      end

      # from whatwg fetch spec
      case [status, method]
      in [301 | 302, :post] | [303, _]
        drop = %w[content-encoding content-language content-length content-location content-type]
        request = {
          **request,
          method: method == :head ? :head : :get,
          headers: headers.except(*drop),
          body: nil
        }
      else
      end

      # from undici
      if Unit::Util.uri_origin(url) != Unit::Util.uri_origin(location)
        drop = %w[authorization cookie host proxy-authorization]
        request = {**request, headers: request.fetch(:headers).except(*drop)}
      end

      request
    end

    # @private
    #
    # @param request [Hash{Symbol => Object}]
    #   @option options [Symbol] :method
    #   @option options [URI::Generic] :url
    #   @option options [Hash{String => String}] :headers
    #   @option options [String, nil] :body
    #   @option options [Float] :timeout
    #
    # @param max_retries [Integer]
    # @param redirect_count [Integer]
    # @param retry_count [Integer]
    # @param send_retry_header [Boolean]
    #
    # @raise [Unit::APIError]
    # @return [Net::HTTPResponse]
    #
    private def send_request(
      request,
      max_retries:,
      redirect_count:,
      retry_count:,
      send_retry_header:
    )
      url, headers = request.fetch_values(:url, :headers)

      if send_retry_header
        headers["x-stainless-retry-count"] = retry_count.to_s
      end

      begin
        response = @requester.execute(request)
        status = Integer(response.code)
      rescue Unit::APIConnectionError => e
        status = e
      end

      case status
      in ..299
        response
      in 300..399 if redirect_count >= MAX_REDIRECTS
        message = "Failed to complete the request within #{MAX_REDIRECTS} redirects."
        raise Unit::APIConnectionError.new(url: url, message: message)
      in 300..399
        request = follow_redirect(request, url: url, status: status, location_header: response["location"])
        send_request(
          request,
          max_retries: max_retries,
          redirect_count: redirect_count + 1,
          retry_count: retry_count,
          send_retry_header: send_retry_header
        )
      in Unit::APIConnectionError if retry_count >= max_retries
        raise status
      in (400..) if retry_count >= max_retries || (response && !should_retry?(status, headers: response))
        body = parse_body(response, suppress_error: true)

        raise Unit::APIStatusError.for(
          url: url,
          status: status,
          body: body,
          request: nil,
          response: response
        )
      in 400.. | Unit::APIConnectionError
        delay = retry_delay(response, retry_count: retry_count)
        sleep(delay)

        send_request(
          request,
          max_retries: max_retries,
          redirect_count: redirect_count,
          retry_count: retry_count + 1,
          send_retry_header: send_retry_header
        )
      end
    end

    # @private
    #
    # @param req [Hash{Symbol => Object}]
    # @param opts [Unit::RequestOptions, Hash{Symbol => Object}]
    #
    # @raise [Unit::APIError]
    # @return [Object]
    #
    private def parse_response(req, opts, response)
      parsed = parse_body(response)
      unwrapped = Unit::Util.dig(parsed, req[:unwrap])

      page, model = req.values_at(:page, :model)
      case [page, model]
      in [Class, Class | Unit::Converter | nil]
        page.new(client: self, req: req, opts: opts, headers: response, unwrapped: unwrapped)
      in [nil, Class | Unit::Converter]
        Unit::Converter.coerce(model, unwrapped)
      in [nil, nil]
        unwrapped
      end
    end

    # Execute the request specified by req + opts. This is the method that all resource methods call into.
    # Params req & opts are kept separate up until this point so that we can
    # @param req [Hash{Symbol => Object}, Array<Object>]
    # @param opts [Unit::RequestOptions, Hash{Symbol => Object}]
    #
    # @raise [Unit::APIError]
    # @return [Object]
    #
    def request(req, opts)
      Unit::RequestOptions.validate!(opts)
      request = build_request(req, opts)

      # Don't send the current retry count in the headers if the caller modified the header defaults.
      send_retry_header = request.fetch(:headers)["x-stainless-retry-count"] == "0"
      response = send_request(
        request,
        max_retries: opts.fetch(:max_retries, @max_retries),
        redirect_count: 0,
        retry_count: 0,
        send_retry_header: send_retry_header
      )
      parse_response(req, opts, response)
    end

    # @return [String]
    def inspect
      base_url = Unit::Util.unparse_uri(@base_url)
      "#<#{self.class.name}:0x#{object_id.to_s(16)} base_url=#{base_url} max_retries=#{@max_retries} timeout=#{@timeout}>"
    end
  end
end
