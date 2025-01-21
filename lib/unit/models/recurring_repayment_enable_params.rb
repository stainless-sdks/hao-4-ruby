# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentEnableParams < Unit::BaseModel
      # @!attribute body
      #
      #   @return [Object, nil]
      required :body, Unit::Unknown, nil?: true

      # @!attribute [r] include
      #
      #   @return [String, nil]
      optional :include, String

      # @!parse
      #   # @return [String]
      #   attr_writer :include

      # @!parse
      #   # @param body [Object, nil]
      #   # @param include [String]
      #   #
      #   def initialize(body:, include: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
