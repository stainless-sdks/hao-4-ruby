# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization => {
    #   id: String,
    #   relationships: Unit::Models::Authorization::Relationships,
    #   type: enum: Unit::Models::Authorization::Type,
    #   attributes: Unit::Models::Authorization::Attributes
    # }
    # ```
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

      # @!attribute [r] attributes
      #
      #   @return [Unit::Models::Authorization::Attributes, nil]
      optional :attributes, -> { Unit::Models::Authorization::Attributes }

      # @!parse
      #   # @return [Unit::Models::Authorization::Attributes]
      #   attr_writer :attributes

      # @!parse
      #   # @param id [String]
      #   # @param relationships [Unit::Models::Authorization::Relationships]
      #   # @param type [String]
      #   # @param attributes [Unit::Models::Authorization::Attributes]
      #   #
      #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # relationships => {
      #   account: Unit::Models::Authorization::Relationships::Account,
      #   card: Unit::Models::Authorization::Relationships::Card,
      #   authorization_request: Unit::Models::Authorization::Relationships::AuthorizationRequest,
      #   customer: Unit::Models::Authorization::Relationships::Customer
      # }
      # ```
      class Relationships < Unit::BaseModel
        # @!attribute account
        #
        #   @return [Unit::Models::Authorization::Relationships::Account]
        required :account, -> { Unit::Models::Authorization::Relationships::Account }

        # @!attribute card
        #
        #   @return [Unit::Models::Authorization::Relationships::Card]
        required :card, -> { Unit::Models::Authorization::Relationships::Card }

        # @!attribute [r] authorization_request
        #
        #   @return [Unit::Models::Authorization::Relationships::AuthorizationRequest, nil]
        optional :authorization_request,
                 -> { Unit::Models::Authorization::Relationships::AuthorizationRequest },
                 api_name: :authorizationRequest

        # @!parse
        #   # @return [Unit::Models::Authorization::Relationships::AuthorizationRequest]
        #   attr_writer :authorization_request

        # @!attribute [r] customer
        #
        #   @return [Unit::Models::Authorization::Relationships::Customer, nil]
        optional :customer, -> { Unit::Models::Authorization::Relationships::Customer }

        # @!parse
        #   # @return [Unit::Models::Authorization::Relationships::Customer]
        #   attr_writer :customer

        # @!parse
        #   # @param account [Unit::Models::Authorization::Relationships::Account]
        #   # @param card [Unit::Models::Authorization::Relationships::Card]
        #   # @param authorization_request [Unit::Models::Authorization::Relationships::AuthorizationRequest]
        #   # @param customer [Unit::Models::Authorization::Relationships::Customer]
        #   #
        #   def initialize(account:, card:, authorization_request: nil, customer: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # account => {
        #   data: Unit::Models::Authorization::Relationships::Account::Data
        # }
        # ```
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

          # @example
          # ```ruby
          # data => {
          #   id: String,
          #   type: enum: Unit::Models::Authorization::Relationships::Account::Data::Type
          # }
          # ```
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
            # ```ruby
            # case type
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

        # @example
        # ```ruby
        # card => {
        #   data: Unit::Models::Authorization::Relationships::Card::Data
        # }
        # ```
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

          # @example
          # ```ruby
          # data => {
          #   id: String,
          #   type: String
          # }
          # ```
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

        # @example
        # ```ruby
        # authorization_request => {
        #   data: -> { Unit::ArrayOf[Unit::Models::Authorization::Relationships::AuthorizationRequest::Data] === _1 }
        # }
        # ```
        class AuthorizationRequest < Unit::BaseModel
          # @!attribute [r] data
          #
          #   @return [Array<Unit::Models::Authorization::Relationships::AuthorizationRequest::Data>]
          optional :data,
                   -> {
                     Unit::ArrayOf[Unit::Models::Authorization::Relationships::AuthorizationRequest::Data]
                   }

          # @!parse
          #   # @return [Array<Unit::Models::Authorization::Relationships::AuthorizationRequest::Data>]
          #   attr_writer :data

          # @!parse
          #   # @param data [Array<Unit::Models::Authorization::Relationships::AuthorizationRequest::Data>]
          #   #
          #   def initialize(data: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # data => {
          #   id: String,
          #   type: String
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute [r] id
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] type
            #
            #   @return [String, nil]
            optional :type, String

            # @!parse
            #   # @return [String]
            #   attr_writer :type

            # @!parse
            #   # @param id [String]
            #   # @param type [String]
            #   #
            #   def initialize(id: nil, type: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # customer => {
        #   data: Unit::Models::Authorization::Relationships::Customer::Data
        # }
        # ```
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

          # @example
          # ```ruby
          # data => {
          #   id: String,
          #   type: enum: Unit::Models::Authorization::Relationships::Customer::Data::Type
          # }
          # ```
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
            # ```ruby
            # case type
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
      # ```ruby
      # case type
      # in :authorization
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        AUTHORIZATION = :authorization

        finalize!
      end

      # @example
      # ```ruby
      # attributes => {
      #   amount: Integer,
      #   card_last4_digits: String,
      #   created_at: Time,
      #   merchant: Unit::Models::Authorization::Attributes::Merchant,
      #   recurring: Unit::BooleanModel,
      #   **_
      # }
      # ```
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

        # @!attribute [r] card_network
        #
        #   @return [String, nil]
        optional :card_network, String, api_name: :cardNetwork

        # @!parse
        #   # @return [String]
        #   attr_writer :card_network

        # @!attribute [r] card_verification_data
        #
        #   @return [Unit::Models::Authorization::Attributes::CardVerificationData, nil]
        optional :card_verification_data,
                 -> { Unit::Models::Authorization::Attributes::CardVerificationData },
                 api_name: :cardVerificationData

        # @!parse
        #   # @return [Unit::Models::Authorization::Attributes::CardVerificationData]
        #   attr_writer :card_verification_data

        # @!attribute [r] cash_withdrawal_amount
        #
        #   @return [Integer, nil]
        optional :cash_withdrawal_amount, Integer, api_name: :cashWithdrawalAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :cash_withdrawal_amount

        # @!attribute [r] decline_reason
        #
        #   @return [String, nil]
        optional :decline_reason, String, api_name: :declineReason

        # @!parse
        #   # @return [String]
        #   attr_writer :decline_reason

        # @!attribute [r] digital_wallet
        #
        #   @return [String, nil]
        optional :digital_wallet, String, api_name: :digitalWallet

        # @!parse
        #   # @return [String]
        #   attr_writer :digital_wallet

        # @!attribute [r] payment_method
        #
        #   @return [String, nil]
        optional :payment_method, String, api_name: :paymentMethod

        # @!parse
        #   # @return [String]
        #   attr_writer :payment_method

        # @!attribute [r] summary
        #
        #   @return [String, nil]
        optional :summary, String

        # @!parse
        #   # @return [String]
        #   attr_writer :summary

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!parse
        #   # @param amount [Integer]
        #   # @param card_last4_digits [String]
        #   # @param created_at [String]
        #   # @param merchant [Unit::Models::Authorization::Attributes::Merchant]
        #   # @param recurring [Boolean]
        #   # @param status [String]
        #   # @param card_network [String]
        #   # @param card_verification_data [Unit::Models::Authorization::Attributes::CardVerificationData]
        #   # @param cash_withdrawal_amount [Integer]
        #   # @param decline_reason [String]
        #   # @param digital_wallet [String]
        #   # @param payment_method [String]
        #   # @param summary [String]
        #   # @param tags [Hash{Symbol=>String}]
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

        # @example
        # ```ruby
        # merchant => {
        #   category: String,
        #   name: String,
        #   type: Integer,
        #   id: String,
        #   location: String
        # }
        # ```
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

          # @!attribute [r] id
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] location
          #
          #   @return [String, nil]
          optional :location, String

          # @!parse
          #   # @return [String]
          #   attr_writer :location

          # @!parse
          #   # @param category [String]
          #   # @param name [String]
          #   # @param type [Integer]
          #   # @param id [String]
          #   # @param location [String]
          #   #
          #   def initialize(category:, name:, type:, id: nil, location: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # card_verification_data => {
        #   verification_method: String
        # }
        # ```
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
