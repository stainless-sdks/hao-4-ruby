# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization_request_decline_response => {
    #   data: Unit::Models::AuthorizationRequest
    # }
    # ```
    class AuthorizationRequestDeclineResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AuthorizationRequest]
      optional :data, -> { Unit::Models::AuthorizationRequest }

      # @!parse
      #   # @param data [Unit::Models::AuthorizationRequest]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
