# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Authorization]
      optional :data, -> { Unit::Models::Authorization }

      # @!parse
      #   # @param data [Unit::Models::Authorization, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
