# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentDisableParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

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
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(body:, include: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
