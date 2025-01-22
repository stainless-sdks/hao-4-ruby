# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentReturnParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CheckPaymentReturnParams::Data, nil]
      optional :data, -> { Unit::Models::CheckPaymentReturnParams::Data }

      # @!parse
      #   # @return [Unit::Models::CheckPaymentReturnParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentReturnParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CheckPaymentReturnParams::Data::Attributes,
      #   type: Unit::Models::CheckPaymentReturnParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::CheckPaymentReturnParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::CheckPaymentReturnParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::CheckPaymentReturnParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CheckPaymentReturnParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::CheckPaymentReturnParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   reason: Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] reason
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason, nil]
          optional :reason, enum: -> { Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason }

          # @!parse
          #   # @return [Symbol, Unit::Models::CheckPaymentReturnParams::Data::Attributes::Reason]
          #   attr_writer :reason

          # @!parse
          #   # @param reason [String]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case reason
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
        # ```ruby
        # case type
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
