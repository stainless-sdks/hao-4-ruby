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

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account]
            optional :account,
                     -> {
                       Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account
                     }

            # @!attribute customer
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer]
            optional :customer,
                     -> {
                       Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer
                     }

            # @!parse
            #   # @param account [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Account, nil]
            #   # @param customer [Unit::Models::CashDeposits::BarcodeCreateParams::Data::Relationships::Customer, nil]
            #   #
            #   def initialize(account: nil, customer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

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
