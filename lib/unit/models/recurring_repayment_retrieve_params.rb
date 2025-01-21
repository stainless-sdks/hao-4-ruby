# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentRetrieveParams < Unit::BaseModel
      # @!attribute [r] include
      #
      #   @return [String, nil]
      optional :include, String

      # @!parse
      #   # @return [String]
      #   attr_writer :include

      # @!parse
      #   # @param include [String]
      #   #
      #   def initialize(include: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
