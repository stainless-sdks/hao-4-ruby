# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentReturnParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckPaymentReturnParams::Data]
      optional :data, -> { Unit::Models::CheckPaymentReturnParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentReturnParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckPaymentReturnParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::CheckPaymentReturnParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Type]
        optional :type, enum: -> { Unit::Models::CheckPaymentReturnParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CheckPaymentReturnParams::Data::Attributes, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason]
          optional :reason, enum: -> { Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason }

          # @!parse
          #   # @param reason [String, nil]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :InsufficientFunds
          #   # ...
          # in :AccountClosed
          #   # ...
          # in :AlteredCheck
          #   # ...
          # in :ForgedSignature
          #   # ...
          # in :PostdatedCheck
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Unit::Enum
            INSUFFICIENT_FUNDS = :InsufficientFunds
            ACCOUNT_CLOSED = :AccountClosed
            ALTERED_CHECK = :AlteredCheck
            FORGED_SIGNATURE = :ForgedSignature
            POSTDATED_CHECK = :PostdatedCheck
            STOP_PAYMENT_ORDER = :StopPaymentOrder
            UNAUTHORIZED_DEBIT = :UnauthorizedDebit
            WRONG_AMOUNT = :WrongAmount
            DUPLICATE_PAYMENT = :DuplicatePayment
            MISSING_SIGNATURE = :MissingSignature
            IRREGULAR_ENDORSEMENT = :IrregularEndorsement
            OTHER = :Other

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :checkPaymentReturn
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_PAYMENT_RETURN = :checkPaymentReturn

          finalize!
        end
      end
    end
  end
end