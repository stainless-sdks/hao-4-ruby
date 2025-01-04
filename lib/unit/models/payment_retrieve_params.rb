# frozen_string_literal: true

module Unit
  module Models
    class PaymentRetrieveParams < Unit::BaseModel
      # @!attribute included
      #
      #   @return [String]
      optional :included, String

      # @!parse
      #   # @param included [String]
      #   #
      #   def initialize(included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
