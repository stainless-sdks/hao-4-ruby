# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentApproveParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckPaymentApproveParams::Data]
      optional :data, -> { Unit::Models::CheckPaymentApproveParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentApproveParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   type: enum: Unit::Models::CheckPaymentApproveParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentApproveParams::Data::Type]
        optional :type, enum: -> { Unit::Models::CheckPaymentApproveParams::Data::Type }

        # @!parse
        #   # @param type [String]
        #   #
        #   def initialize(type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case type
        # in :additionalVerification
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ADDITIONAL_VERIFICATION = :additionalVerification

          finalize!
        end
      end
    end
  end
end
