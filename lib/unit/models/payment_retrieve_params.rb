# frozen_string_literal: true

module Unit
  module Models
    class PaymentRetrieveParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] included
      #
      #   @return [String, nil]
      optional :included, String

      # @!parse
      #   # @return [String]
      #   attr_writer :included

      # @!parse
      #   # @param included [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(included: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
