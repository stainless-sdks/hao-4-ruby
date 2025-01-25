# frozen_string_literal: true

module Unit
  module Models
    module Users
      class APITokenDeleteParams < Unit::BaseModel
        # @!parse
        #   extend Unit::RequestParameters::Converter
        include Unit::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!parse
        #   # @param user_id [String]
        #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(user_id:, request_options: {}, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
