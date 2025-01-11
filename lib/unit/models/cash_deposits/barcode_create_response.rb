# frozen_string_literal: true

module Unit
  module Models
    module CashDeposits
      # @example
      #
      # ```ruby
      # barcode_create_response => {
      #   data: Unit::Models::CashDeposits::BarcodeCreateResponse::Data
      # }
      # ```
      class BarcodeCreateResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::CashDeposits::BarcodeCreateResponse::Data]
        optional :data, -> { Unit::Models::CashDeposits::BarcodeCreateResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::CashDeposits::BarcodeCreateResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   attributes: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Attributes,
        #   relationships: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships,
        #   type: enum: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Type
        # }
        # ```
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

          # @example
          #
          # ```ruby
          # attributes => {
          #   barcode_number: String,
          #   expiration: Time,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
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
            #   # @param barcode_number [String]
            #   # @param expiration [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(barcode_number: nil, expiration: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # relationships => {
          #   account: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account,
          #   customer: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer
          # }
          # ```
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

            # @example
            #
            # ```ruby
            # account => {
            #   data: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data
            # }
            # ```
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

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Account::Data::Type
              # }
              # ```
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
            #
            # ```ruby
            # customer => {
            #   data: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data
            # }
            # ```
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

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::CashDeposits::BarcodeCreateResponse::Data::Relationships::Customer::Data::Type
              # }
              # ```
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
          #
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
