# frozen_string_literal: true

module Unit
  # Specify HTTP behaviour to use for a specific request. These options supplement
  #   or override those provided at the client level.
  #
  #   When making a request, you can pass an actual {RequestOptions} instance, or
  #   simply pass a Hash with symbol keys matching the attributes on this class.
  class RequestOptions
    # @private
    #
    # @return [Array<Symbol>]
    #
    private_class_method def self.options = @options ||= []

    # @private
    #
    # @param name [Symbol]
    #
    private_class_method def self.option(name)
      define_method("#{name}=") { |val| @values[name] = val }
      define_method(name) { @values[name] }
      options << name
    end

    # @private
    #
    # @param opts [Unit::RequestOptions, Hash{Symbol=>Object}]
    #
    # @raise [ArgumentError]
    #
    def self.validate!(opts)
      case opts
      in Unit::RequestOptions | Hash
        opts.to_h.each_key do |k|
          unless options.include?(k)
            raise ArgumentError.new("Request `opts` keys must be one of #{options}, got #{k.inspect}")
          end
        end
      else
        raise ArgumentError.new("Request `opts` must be a Hash or RequestOptions, got #{opts.inspect}")
      end
    end

    # @!attribute idempotency_key
    #   Idempotency key to send with request and all associated retries. Will only be
    #   sent for write requests.
    #
    #   @return [String]
    option :idempotency_key

    # @!attribute extra_headers
    #   Extra headers to send with the request. These are `.merged`’d into any
    #   `extra_headers` given at the client level.
    #
    #   @return [Hash{String=>String}]
    option :extra_headers

    # @!attribute extra_query
    #   Extra query params to send with the request. These are `.merge`’d into any
    #   `query` given at the client level.
    #
    #   @return [Hash{String=>Array<String>}]
    option :extra_query

    # @!attribute extra_body
    #   Extra data to send with the request. These are deep merged into any data
    #   generated as part of the normal request.
    #
    #   @return [Hash{Symbol=>Object}]
    option :extra_body

    # @!attribute max_retries
    #   Maximum number of retries to attempt after a failed initial request.
    #
    #   @return [Integer]
    option :max_retries

    # @!attribute timeout
    #   Request timeout in seconds.
    #
    #   @return [Float]
    option :timeout

    # @param key [Symbol]
    #
    def [](key) = @values[key]

    # Return a Hash containing the options set on this instance.
    #
    # @return [Hash{Symbol=>Object}]
    #
    def to_h = @values

    alias_method :to_hash, :to_h

    # @param keys [Array<Symbol>, nil]
    #
    # @return [Hash{Symbol=>Object}]
    #
    def deconstruct_keys(keys) = @values.deconstruct_keys(keys)

    # Returns a new instance of RequestOptions.
    #
    # @param values [Hash{Symbol=>Object}] .
    #
    #   @option values [String] :idempotency_key Idempotency key to send with request and all associated retries. Will only be
    #     sent for write requests.
    #
    #   @option values [Hash{String=>String}] :extra_headers Extra headers to send with the request. These are `.merged`’d into any
    #     `extra_headers` given at the client level.
    #
    #   @option values [Hash{String=>Array<String>}] :extra_query Extra query params to send with the request. These are `.merge`’d into any
    #     `query` given at the client level.
    #
    #   @option values [Hash{Symbol=>Object}] :extra_body Extra data to send with the request. These are deep merged into any data
    #     generated as part of the normal request.
    #
    #   @option values [Integer] :max_retries Maximum number of retries to attempt after a failed initial request.
    #
    #   @option values [Float] :timeout Request timeout in seconds.
    #
    def initialize(values = {}) = (@values = values)

    # @return [String]
    #
    def to_s = @values.to_s

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} #{@values.inspect}>"
    end
  end
end
