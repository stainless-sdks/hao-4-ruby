# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # tax_form_retrieve_response => {
    #   data: Unit::Models::TaxFormRetrieveResponse::Data
    # }
    # ```
    class TaxFormRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::TaxFormRetrieveResponse::Data, nil]
      optional :data, -> { Unit::Models::TaxFormRetrieveResponse::Data }

      # @!parse
      #   # @return [Unit::Models::TaxFormRetrieveResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::TaxFormRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::TaxFormRetrieveResponse::Data::Attributes,
      #   type: enum: Unit::Models::TaxFormRetrieveResponse::Data::Type,
      #   relationships: Unit::Models::TaxFormRetrieveResponse::Data::Relationships
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::TaxFormRetrieveResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::TaxFormRetrieveResponse::Data::Type]
        required :type, enum: -> { Unit::Models::TaxFormRetrieveResponse::Data::Type }

        # @!attribute [r] relationships
        #
        #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships, nil]
        optional :relationships, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships }

        # @!parse
        #   # @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships]
        #   attr_writer :relationships

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::TaxFormRetrieveResponse::Data::Attributes]
        #   # @param type [String]
        #   # @param relationships [Unit::Models::TaxFormRetrieveResponse::Data::Relationships]
        #   #
        #   def initialize(id:, attributes:, type:, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   form_type: String,
        #   tax_year: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute form_type
          #
          #   @return [String]
          required :form_type, String, api_name: :formType

          # @!attribute tax_year
          #
          #   @return [String]
          required :tax_year, String, api_name: :taxYear

          # @!parse
          #   # @param form_type [String]
          #   # @param tax_year [String]
          #   #
          #   def initialize(form_type:, tax_year:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # case type
        # in :taxForm
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          TAX_FORM = :taxForm

          finalize!
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account,
        #   accounts: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts,
        #   customer: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute [r] account
          #
          #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account, nil]
          optional :account, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account }

          # @!parse
          #   # @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account]
          #   attr_writer :account

          # @!attribute [r] accounts
          #
          #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts, nil]
          optional :accounts, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts }

          # @!parse
          #   # @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts]
          #   attr_writer :accounts

          # @!attribute [r] customer
          #
          #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer, nil]
          optional :customer, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer }

          # @!parse
          #   # @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer]
          #   attr_writer :customer

          # @!parse
          #   # @param account [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account]
          #   # @param accounts [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts]
          #   # @param customer [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer]
          #   #
          #   def initialize(account: nil, accounts: nil, customer: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Account::Data::Type
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
          # accounts => {
          #   data: -> { Unit::ArrayOf[Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data] === _1 }
          # }
          # ```
          class Accounts < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data>]
            required :data,
                     -> {
                       Unit::ArrayOf[Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data]
                     }

            # @!parse
            #   # @param data [Array<Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Accounts::Data::Type
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
          #   data: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormRetrieveResponse::Data::Relationships::Customer::Data::Type
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
