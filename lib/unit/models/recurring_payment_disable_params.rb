# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentDisableParams < Unit::BaseModel
      # @!attribute body
      #
      #   @return [Object]
      required :body, Unit::Unknown

      # @!parse
      #   # @param body [Object, nil]
      #   #
      #   def initialize(body:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
