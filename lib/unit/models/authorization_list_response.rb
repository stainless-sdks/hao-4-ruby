# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::Authorization>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::Authorization }]

      # @!parse
      #   # @param data [Array<Unit::Models::Authorization>, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
