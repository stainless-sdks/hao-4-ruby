# frozen_string_literal: true

module Unit
  module Models
    module CashDeposits
      class BarcodeCreateResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data]
        optional :data, -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::CashDeposits::BarcodeCreateResponse::Data, nil]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Type]
          required :type, enum: -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Attributes]
          #   # @param relationships [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute barcode_number
            #
            #   @return [String]
            optional :barcode_number, String, api_name: :barcodeNumber

            # @!attribute expiration
            #
            #   @return [Time]
            optional :expiration, Time

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param barcode_number [String, nil]
            #   # @param expiration [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(barcode_number: nil, expiration: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account]
            required :account,
                     -> {
                       Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account
                     }

            # @!attribute customer
            #
            #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer }

            # @!parse
            #   # @param account [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account]
            #   # @param customer [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer]
            #   #
            #   def initialize(account:, customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data::Type
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
                end
              end
            end

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data::Type
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
          end
        end
      end
    end
  end
end
