# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositConfirmParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositConfirmParams::Data]
      required :data, -> { Unit::Models::CheckDepositConfirmParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositConfirmParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   type: String
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!parse
        #   # @param type [String]
        #   #
        #   def initialize(type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
