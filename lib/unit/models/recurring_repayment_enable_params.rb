# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentEnableParams < Unit::BaseModel
      # @!attribute body
      #
      #   @return [Object]
      required :body, Unit::Unknown

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!parse
      #   # @param body [Object, nil]
      #   # @param include [String, nil]
      #   #
      #   def initialize(body:, include: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
