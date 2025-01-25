# frozen_string_literal: true

module Unit
  module Models
    class AccountCloseParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::AccountCloseParams::Data, nil]
      optional :data, -> { Unit::Models::AccountCloseParams::Data }

      # @!parse
      #   # @return [Unit::Models::AccountCloseParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::AccountCloseParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::AccountCloseParams::Data::Attributes,
      #   type: Unit::Models::AccountCloseParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::AccountCloseParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::AccountCloseParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::AccountCloseParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::AccountCloseParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::AccountCloseParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::AccountCloseParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   bank_reason: Unit::Models::AccountCloseParams::Data::Attributes::BankReason,
        #   fraud_reason: Unit::Models::AccountCloseParams::Data::Attributes::FraudReason,
        #   reason: Unit::Models::AccountCloseParams::Data::Attributes::Reason
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute bank_reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::BankReason, nil]
          optional :bank_reason,
                   enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::BankReason },
                   api_name: :bankReason,
                   nil?: true

          # @!attribute fraud_reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::FraudReason, nil]
          optional :fraud_reason,
                   enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::FraudReason },
                   api_name: :fraudReason,
                   nil?: true

          # @!attribute [r] reason
          #
          #   @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::Reason, nil]
          optional :reason, enum: -> { Unit::Models::AccountCloseParams::Data::Attributes::Reason }

          # @!parse
          #   # @return [Symbol, Unit::Models::AccountCloseParams::Data::Attributes::Reason]
          #   attr_writer :reason

          # @!parse
          #   # @param bank_reason [String, nil]
          #   # @param fraud_reason [String, nil]
          #   # @param reason [String]
          #   #
          #   def initialize(bank_reason: nil, fraud_reason: nil, reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
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
