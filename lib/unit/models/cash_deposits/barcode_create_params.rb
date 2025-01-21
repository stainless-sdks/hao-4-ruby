# frozen_string_literal: true

module Unit
  module Models
    module CashDeposits
      class BarcodeCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data]
        required :data, -> { Unit::Models::CashDeposits::BarcodeCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::CashDeposits::BarcodeCreateParams::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   attributes: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Attributes,
        #   relationships: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships,
        #   type: enum: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Attributes]
          required :attributes, -> { Unit::Models::CashDeposits::BarcodeCreateParams::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships]
          required :relationships, -> { Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateParams::Data::Type]
          required :type, enum: -> { Unit::Models::CashDeposits::BarcodeCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Attributes]
          #   # @param relationships [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   store_id: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute store_id
            #
            #   @return [String]
            required :store_id, String, api_name: :storeId

            # @!parse
            #   # @param store_id [String]
            #   #
            #   def initialize(store_id:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account,
          #   customer: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute [r] account
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account, nil]
            optional :account,
                     -> {
                       Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account
                     }

            # @!parse
            #   # @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account]
            #   attr_writer :account

            # @!attribute [r] customer
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer, nil]
            optional :customer,
                     -> {
                       Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer
                     }

            # @!parse
            #   # @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer]
            #   attr_writer :customer

            # @!parse
            #   # @param account [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account]
            #   # @param customer [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer]
            #   #
            #   def initialize(account: nil, customer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data]
              required :data,
                       -> {
                         Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data
                       }

              # @!parse
              #   # @param data [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account::Data::Type
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
            # customer => {
            #   data: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data
            # }
            # ```
            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer::Data::Type
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

          # @example
          # ```ruby
          # case type
          # in :cashDepositBarcode
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CASH_DEPOSIT_BARCODE = :cashDepositBarcode

            finalize!
          end
        end
      end
    end
  end
end
