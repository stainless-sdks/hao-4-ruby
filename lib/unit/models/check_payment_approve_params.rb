# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentApproveParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckPaymentApproveParams::Data]
      optional :data, -> { Unit::Models::CheckPaymentApproveParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentApproveParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentApproveParams::Data::Type]
        optional :type, enum: -> { Unit::Models::CheckPaymentApproveParams::Data::Type }

        # @!parse
        #   # @param type [String, nil]
        #   #
        #   def initialize(type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
