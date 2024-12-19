# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AuthorizationRequest]
      optional :data, -> { Unit::Models::AuthorizationRequest }

      # @!parse
      #   # @param data [Unit::Models::AuthorizationRequest, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
