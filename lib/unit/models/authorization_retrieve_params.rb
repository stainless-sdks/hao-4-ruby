# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRetrieveParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] include_none_authorized
      #
      #   @return [Boolean, nil]
      optional :include_none_authorized, Unit::BooleanModel, api_name: :includeNoneAuthorized

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_none_authorized

      # @!parse
      #   # @param include_none_authorized [Boolean]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(include_none_authorized: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
