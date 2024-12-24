# frozen_string_literal: true

module Unit
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Unit::Error
  end

  class APIError < Unit::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Unit::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < Unit::APIConnectionError
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < Unit::APIError
    # @private
    #
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [Object]
    # @param response [Object]
    #
    # @return [Unit::APIStatusError]
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        Unit::BadRequestError.new(**kwargs)
      in 401
        Unit::AuthenticationError.new(**kwargs)
      in 403
        Unit::PermissionDeniedError.new(**kwargs)
      in 404
        Unit::NotFoundError.new(**kwargs)
      in 409
        Unit::ConflictError.new(**kwargs)
      in 422
        Unit::UnprocessableEntityError.new(**kwargs)
      in 429
        Unit::RateLimitError.new(**kwargs)
      in (500..)
        Unit::InternalServerError.new(**kwargs)
      else
        Unit::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < Unit::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Unit::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Unit::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Unit::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Unit::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Unit::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Unit::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Unit::APIStatusError
    HTTP_STATUS = (500..)
  end
end
