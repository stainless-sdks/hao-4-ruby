# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositFrontResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [String]
      optional :data, String

      # @!parse
      #   # @param data [String, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
