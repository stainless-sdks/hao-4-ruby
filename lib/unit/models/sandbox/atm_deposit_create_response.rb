# frozen_string_literal: true

module Unit
  module Models
    module Sandbox
      # @example
      # ```ruby
      # atm_deposit_create_response => {
      #   data: Unit::Models::Sandbox::AtmDepositCreateResponse::Data
      # }
      # ```
      class AtmDepositCreateResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data]
        optional :data, -> { Unit::Models::Sandbox::AtmDepositCreateResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Sandbox::AtmDepositCreateResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::Models::Account
          # @!attribute attributes
          #
          #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships]
          required :relationships, -> { Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships }

          # @example
          # ```ruby
          # attributes => {
          #   available: Integer,
          #   balance: Integer,
          #   created_at: Time,
          #   currency: String,
          #   deposit_product: String,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute available
            #
            #   @return [Integer]
            required :available, Integer

            # @!attribute balance
            #
            #   @return [Integer]
            required :balance, Integer

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute deposit_product
            #
            #   @return [String]
            required :deposit_product, String, api_name: :depositProduct

            # @!attribute hold
            #
            #   @return [Integer]
            required :hold, Integer

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute routing_number
            #
            #   @return [String]
            required :routing_number, String, api_name: :routingNumber

            # @!attribute status
            #
            #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::Status]
            required :status,
                     enum: -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::Status
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol=>String}]
            required :tags, Unit::HashOf[String]

            # @!attribute account_number
            #
            #   @return [String]
            optional :account_number, String, api_name: :accountNumber

            # @!attribute close_reason
            #
            #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::CloseReason]
            optional :close_reason,
                     enum: -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::CloseReason
                     },
                     api_name: :closeReason

            # @!attribute close_reason_text
            #
            #   @return [String]
            optional :close_reason_text, String, api_name: :closeReasonText

            # @!attribute daca_status
            #
            #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::DacaStatus]
            optional :daca_status,
                     enum: -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::DacaStatus
                     },
                     api_name: :dacaStatus

            # @!attribute fraud_reason
            #
            #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::FraudReason]
            optional :fraud_reason,
                     enum: -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::FraudReason
                     },
                     api_name: :fraudReason

            # @!attribute freeze_reason
            #
            #   @return [String]
            optional :freeze_reason, String, api_name: :freezeReason

            # @!attribute is_overdrawn_within_limit
            #
            #   @return [Boolean]
            optional :is_overdrawn_within_limit, Unit::BooleanModel, api_name: :isOverdrawnWithinLimit

            # @!attribute masked_account_number
            #
            #   @return [String]
            optional :masked_account_number, String, api_name: :maskedAccountNumber

            # @!attribute overdraft_limit
            #
            #   @return [Integer]
            optional :overdraft_limit, Integer, api_name: :overdraftLimit

            # @!attribute secondary_account_number
            #
            #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::SecondaryAccountNumber]
            optional :secondary_account_number,
                     -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::SecondaryAccountNumber
                     },
                     api_name: :secondaryAccountNumber

            # @!attribute updated_at
            #
            #   @return [Time]
            optional :updated_at, Time, api_name: :updatedAt

            # @!parse
            #   # @param available [Integer]
            #   # @param balance [Integer]
            #   # @param created_at [String]
            #   # @param currency [String]
            #   # @param deposit_product [String]
            #   # @param hold [Integer]
            #   # @param name [String]
            #   # @param routing_number [String]
            #   # @param status [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param account_number [String]
            #   # @param close_reason [String]
            #   # @param close_reason_text [String]
            #   # @param daca_status [String]
            #   # @param fraud_reason [String]
            #   # @param freeze_reason [String]
            #   # @param is_overdrawn_within_limit [Boolean]
            #   # @param masked_account_number [String]
            #   # @param overdraft_limit [Integer]
            #   # @param secondary_account_number [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Attributes::SecondaryAccountNumber]
            #   # @param updated_at [String]
            #   #
            #   def initialize(
            #     available:,
            #     balance:,
            #     created_at:,
            #     currency:,
            #     deposit_product:,
            #     hold:,
            #     name:,
            #     routing_number:,
            #     status:,
            #     tags:,
            #     account_number: nil,
            #     close_reason: nil,
            #     close_reason_text: nil,
            #     daca_status: nil,
            #     fraud_reason: nil,
            #     freeze_reason: nil,
            #     is_overdrawn_within_limit: nil,
            #     masked_account_number: nil,
            #     overdraft_limit: nil,
            #     secondary_account_number: nil,
            #     updated_at: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # case status
            # in :Open
            #   # ...
            # in :Closed
            #   # ...
            # in :Frozen
            #   # ...
            # end
            # ```
            class Status < Unit::Enum
              OPEN = :Open
              CLOSED = :Closed
              FROZEN = :Frozen

              finalize!
            end

            # @example
            # ```ruby
            # case close_reason
            # in :ByCustomer
            #   # ...
            # in :Fraud
            #   # ...
            # in :NegativeBalance
            #   # ...
            # in :ByBank
            #   # ...
            # in :BreachOfTermsAndConditions
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class CloseReason < Unit::Enum
              BY_CUSTOMER = :ByCustomer
              FRAUD = :Fraud
              NEGATIVE_BALANCE = :NegativeBalance
              BY_BANK = :ByBank
              BREACH_OF_TERMS_AND_CONDITIONS = :BreachOfTermsAndConditions
              NO_ACCOUNT_ACTIVITY = :NoAccountActivity
              PROGRAM_CHANGE = :ProgramChange

              finalize!
            end

            # @example
            # ```ruby
            # case daca_status
            # in :Activated
            #   # ...
            # in :Entered
            #   # ...
            # end
            # ```
            class DacaStatus < Unit::Enum
              ACTIVATED = :Activated
              ENTERED = :Entered

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
            # secondary_account_number => {
            #   account_number: String,
            #   routing_number: String
            # }
            # ```
            class SecondaryAccountNumber < Unit::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String, api_name: :accountNumber

              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String, api_name: :routingNumber

              # @!parse
              #   # @param account_number [String]
              #   # @param routing_number [String]
              #   #
              #   def initialize(account_number:, routing_number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # relationships => {
          #   customer: Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer]
            optional :customer,
                     -> {
                       Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer
                     }

            # @!parse
            #   # @param customer [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer]
            #   #
            #   def initialize(customer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # customer => {
            #   data: Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data
            # }
            # ```
            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::AtmDepositCreateResponse::Data::Relationships::Customer::Data::Type
                         }

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
        end
      end
    end
  end
end
