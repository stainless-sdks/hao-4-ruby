# frozen_string_literal: true

module Unit
  module Models
    class AccountCloseParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AccountCloseParams::Data]
      optional :data, -> { Unit::Models::AccountCloseParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AccountCloseParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::AccountCloseParams::Data::Attributes,
      #   type: enum: Unit::Models::AccountCloseParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::AccountCloseParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::AccountCloseParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Type]
        optional :type, enum: -> { Unit::Models::AccountCloseParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::AccountCloseParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   bank_reason: enum: Unit::Models::AccountCloseParams::Data::Attributes::BankReason,
        #   fraud_reason: enum: Unit::Models::AccountCloseParams::Data::Attributes::FraudReason,
        #   reason: enum: Unit::Models::AccountCloseParams::Data::Attributes::Reason
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute bank_reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::BankReason, nil]
          optional :bank_reason,
                   enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::BankReason },
                   api_name: :bankReason

          # @!attribute fraud_reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::FraudReason, nil]
          optional :fraud_reason,
                   enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::FraudReason },
                   api_name: :fraudReason

          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::Reason]
          optional :reason, enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::Reason }

          # @!parse
          #   # @param bank_reason [String, nil]
          #   # @param fraud_reason [String, nil]
          #   # @param reason [String]
          #   #
          #   def initialize(bank_reason: nil, fraud_reason: nil, reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case bank_reason
          # in :ProhibitedBusiness
          #   # ...
          # in :MissingCddEdd
          #   # ...
          # in :NonUsOperation
          #   # ...
          # in :SuspectedFraud
          #   # ...
          # end
          # ```
          class BankReason < Unit::Enum
            PROHIBITED_BUSINESS = :ProhibitedBusiness
            MISSING_CDD_EDD = :MissingCddEdd
            NON_US_OPERATION = :NonUsOperation
            SUSPECTED_FRAUD = :SuspectedFraud

            finalize!
          end

          # @example
          #
          # ```ruby
          # case fraud_reason
          # in :ACHActivity
          #   # ...
          # in :CardActivity
          #   # ...
          # in :CheckActivity
          #   # ...
          # in :ApplicationHistory
          #   # ...
          # in :AccountActivity
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class FraudReason < Unit::Enum
            ACH_ACTIVITY = :ACHActivity
            CARD_ACTIVITY = :CardActivity
            CHECK_ACTIVITY = :CheckActivity
            APPLICATION_HISTORY = :ApplicationHistory
            ACCOUNT_ACTIVITY = :AccountActivity
            CLIENT_IDENTIFIED = :ClientIdentified
            IDENTITY_THEFT = :IdentityTheft
            LINKED_TO_FRAUDULENT_CUSTOMER = :LinkedToFraudulentCustomer

            finalize!
          end

          # @example
          #
          # ```ruby
          # case reason
          # in :ByCustomer
          #   # ...
          # in :Fraud
          #   # ...
          # end
          # ```
          class Reason < Unit::Enum
            BY_CUSTOMER = :ByCustomer
            FRAUD = :Fraud

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # case type
        # in :creditAccountClose
        #   # ...
        # in :depositAccountClose
        #   # ...
        # in :walletAccountClose
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CREDIT_ACCOUNT_CLOSE = :creditAccountClose
          DEPOSIT_ACCOUNT_CLOSE = :depositAccountClose
          WALLET_ACCOUNT_CLOSE = :walletAccountClose

          finalize!
        end
      end
    end
  end
end
