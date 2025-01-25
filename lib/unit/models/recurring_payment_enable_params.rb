# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentEnableParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute body
      #
      #   @return [Object, nil]
      required :body, Unit::Unknown, nil?: true

      # @!parse
      #   # @param body [Object, nil]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(body:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
