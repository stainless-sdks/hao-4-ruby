# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::AuthorizationRequest>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::AuthorizationRequest }]

      # @!parse
      #   # @param data [Array<Unit::Models::AuthorizationRequest>, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
