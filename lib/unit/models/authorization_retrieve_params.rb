# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRetrieveParams < Unit::BaseModel
      # @!attribute include_none_authorized
      #
      #   @return [Boolean]
      optional :include_none_authorized, Unit::BooleanModel, api_name: :includeNoneAuthorized

      # @!parse
      #   # @param include_none_authorized [Boolean, nil]
      #   #
      #   def initialize(include_none_authorized: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
