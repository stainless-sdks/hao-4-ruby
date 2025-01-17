# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization_request_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::AuthorizationRequest] === _1 }
    # }
    # ```
    class AuthorizationRequestListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::AuthorizationRequest>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::AuthorizationRequest] }

      # @!parse
      #   # @param data [Array<Unit::Models::AuthorizationRequest>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
