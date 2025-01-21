# frozen_string_literal: true

module Unit
  module Models
    class PaymentRetrieveParams < Unit::BaseModel
      # @!attribute [r] included
      #
      #   @return [String, nil]
      optional :included, String

      # @!parse
      #   # @return [String]
      #   attr_writer :included

      # @!parse
      #   # @param included [String]
      #   #
      #   def initialize(included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
