# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositConfirmParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositConfirmParams::Data]
      required :data, -> { Unit::Models::CheckDepositConfirmParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositConfirmParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
