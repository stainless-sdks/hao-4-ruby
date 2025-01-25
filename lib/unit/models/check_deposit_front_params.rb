# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositFrontParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!parse
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
