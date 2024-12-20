# frozen_string_literal: true

module Unit
  module Models
    class Authorization < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute relationships
      #
      #   @return [Unit::Models::Authorization::Relationships]
      required :relationships, -> { Unit::Models::Authorization::Relationships }

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::Authorization::Type]
      required :type, enum: -> { Unit::Models::Authorization::Type }

      # @!attribute attributes
      #
      #   @return [Unit::Models::Authorization::Attributes]
      optional :attributes, -> { Unit::Models::Authorization::Attributes }

      # @!parse
      #   # @param id [String]
      #   # @param relationships [Unit::Models::Authorization::Relationships]
      #   # @param type [String]
      #   # @param attributes [Unit::Models::Authorization::Attributes, nil]
      #   #
      #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Relationships < Unit::BaseModel
        # @!attribute account
        #
        #   @return [Unit::Models::Authorization::Relationships::Account]
        required :account, -> { Unit::Models::Authorization::Relationships::Account }

        # @!attribute card
        #
        #   @return [Unit::Models::Authorization::Relationships::Card]
        required :card, -> { Unit::Models::Authorization::Relationships::Card }

        # @!attribute authorization_request
        #
        #   @return [Unit::Models::Authorization::Relationships::AuthorizationRequest]
        optional :authorization_request,
                 -> { Unit::Models::Authorization::Relationships::AuthorizationRequest },
                 api_name: :authorizationRequest

        # @!attribute customer
        #
        #   @return [Unit::Models::Authorization::Relationships::Customer]
        optional :customer, -> { Unit::Models::Authorization::Relationships::Customer }

        # @!parse
        #   # @param account [Unit::Models::Authorization::Relationships::Account]
        #   # @param card [Unit::Models::Authorization::Relationships::Card]
        #   # @param authorization_request [Unit::Models::Authorization::Relationships::AuthorizationRequest, nil]
        #   # @param customer [Unit::Models::Authorization::Relationships::Customer, nil]
        #   #
        #   def initialize(account:, card:, authorization_request: nil, customer: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Account < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::Authorization::Relationships::Account::Data]
          required :data, -> { Unit::Models::Authorization::Relationships::Account::Data }

          # @!parse
          #   # @param data [Unit::Models::Authorization::Relationships::Account::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Authorization::Relationships::Account::Data::Type]
            required :type, enum: -> { Unit::Models::Authorization::Relationships::Account::Data::Type }

            # @!parse
            #   # @param id [String]
            #   # @param type [String]
            #   #
            #   def initialize(id:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :account
            #   # ...
            # in :depositAccount
            #   # ...
            # in :creditAccount
            #   # ...
            # in :batchAccount
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              ACCOUNT = :account
              DEPOSIT_ACCOUNT = :depositAccount
              CREDIT_ACCOUNT = :creditAccount
              BATCH_ACCOUNT = :batchAccount

              finalize!
            end
          end
        end

        class Card < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::Authorization::Relationships::Card::Data]
          required :data, -> { Unit::Models::Authorization::Relationships::Card::Data }

          # @!parse
          #   # @param data [Unit::Models::Authorization::Relationships::Card::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [String]
            required :type, String

            # @!parse
            #   # @param id [String]
            #   # @param type [String]
            #   #
            #   def initialize(id:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end

        class AuthorizationRequest < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Array<Unit::Models::Authorization::Relationships::AuthorizationRequest::Data>]
          optional :data,
                   Unit::ArrayOf[-> {
                     Unit::Models::Authorization::Relationships::AuthorizationRequest::Data
                   }]

          # @!parse
          #   # @param data [Array<Unit::Models::Authorization::Relationships::AuthorizationRequest::Data>, nil]
          #   #
          #   def initialize(data: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            optional :id, String

            # @!attribute type
            #
            #   @return [String]
            optional :type, String

            # @!parse
            #   # @param id [String, nil]
            #   # @param type [String, nil]
            #   #
            #   def initialize(id: nil, type: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end

        class Customer < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::Authorization::Relationships::Customer::Data]
          required :data, -> { Unit::Models::Authorization::Relationships::Customer::Data }

          # @!parse
          #   # @param data [Unit::Models::Authorization::Relationships::Customer::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Authorization::Relationships::Customer::Data::Type]
            required :type, enum: -> { Unit::Models::Authorization::Relationships::Customer::Data::Type }

            # @!parse
            #   # @param id [String]
            #   # @param type [String]
            #   #
            #   def initialize(id:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :customer
            #   # ...
            # in :businessCustomer
            #   # ...
            # in :individualCustomer
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              CUSTOMER = :customer
              BUSINESS_CUSTOMER = :businessCustomer
              INDIVIDUAL_CUSTOMER = :individualCustomer

              finalize!
            end
          end
        end
      end

      # @example
      #
      # ```ruby
      # case enum
      # in :authorization
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        AUTHORIZATION = :authorization

        finalize!
      end

      class Attributes < Unit::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute card_last4_digits
        #
        #   @return [String]
        required :card_last4_digits, String, api_name: :cardLast4Digits

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute merchant
        #
        #   @return [Unit::Models::Authorization::Attributes::Merchant]
        required :merchant, -> { Unit::Models::Authorization::Attributes::Merchant }

        # @!attribute recurring
        #
        #   @return [Boolean]
        required :recurring, Unit::BooleanModel

        # @!attribute status
        #
        #   @return [String]
        required :status, String

        # @!attribute card_network
        #
        #   @return [String]
        optional :card_network, String, api_name: :cardNetwork

        # @!attribute card_verification_data
        #
        #   @return [Unit::Models::Authorization::Attributes::CardVerificationData]
        optional :card_verification_data,
                 -> { Unit::Models::Authorization::Attributes::CardVerificationData },
                 api_name: :cardVerificationData

        # @!attribute cash_withdrawal_amount
        #
        #   @return [Integer]
        optional :cash_withdrawal_amount, Integer, api_name: :cashWithdrawalAmount

        # @!attribute decline_reason
        #
        #   @return [String]
        optional :decline_reason, String, api_name: :declineReason

        # @!attribute digital_wallet
        #
        #   @return [String]
        optional :digital_wallet, String, api_name: :digitalWallet

        # @!attribute payment_method
        #
        #   @return [String]
        optional :payment_method, String, api_name: :paymentMethod

        # @!attribute summary
        #
        #   @return [String]
        optional :summary, String

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param amount [Integer]
        #   # @param card_last4_digits [String]
        #   # @param created_at [String]
        #   # @param merchant [Unit::Models::Authorization::Attributes::Merchant]
        #   # @param recurring [Boolean]
        #   # @param status [String]
        #   # @param card_network [String, nil]
        #   # @param card_verification_data [Unit::Models::Authorization::Attributes::CardVerificationData, nil]
        #   # @param cash_withdrawal_amount [Integer, nil]
        #   # @param decline_reason [String, nil]
        #   # @param digital_wallet [String, nil]
        #   # @param payment_method [String, nil]
        #   # @param summary [String, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   #
        #   def initialize(
        #     amount:,
        #     card_last4_digits:,
        #     created_at:,
        #     merchant:,
        #     recurring:,
        #     status:,
        #     card_network: nil,
        #     card_verification_data: nil,
        #     cash_withdrawal_amount: nil,
        #     decline_reason: nil,
        #     digital_wallet: nil,
        #     payment_method: nil,
        #     summary: nil,
        #     tags: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Merchant < Unit::BaseModel
          # @!attribute category
          #
          #   @return [String]
          required :category, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #
          #   @return [Integer]
          required :type, Integer

          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute location
          #
          #   @return [String]
          optional :location, String

          # @!parse
          #   # @param category [String]
          #   # @param name [String]
          #   # @param type [Integer]
          #   # @param id [String, nil]
          #   # @param location [String, nil]
          #   #
          #   def initialize(category:, name:, type:, id: nil, location: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        class CardVerificationData < Unit::BaseModel
          # @!attribute verification_method
          #
          #   @return [String]
          required :verification_method, String, api_name: :verificationMethod

          # @!parse
          #   # @param verification_method [String]
          #   #
          #   def initialize(verification_method:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
