# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckPaymentCreateParams::Data]
      required :data, -> { Unit::Models::CheckPaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentCreateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CheckPaymentCreateParams::Data::Attributes,
      #   relationships: Unit::Models::CheckPaymentCreateParams::Data::Relationships,
      #   type: Unit::Models::CheckPaymentCreateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckPaymentCreateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckPaymentCreateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckPaymentCreateParams::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckPaymentCreateParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::CheckPaymentCreateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CheckPaymentCreateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckPaymentCreateParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   counterparty: Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty,
        #   description: String,
        #   idempotency_key: String,
        #   memo: String,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute counterparty
          #
          #   @return [Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty]
          required :counterparty,
                   -> {
                     Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty
                   }

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute idempotency_key
          #
          #   @return [String]
          required :idempotency_key, String, api_name: :idempotencyKey

          # @!attribute [r] memo
          #
          #   @return [String, nil]
          optional :memo, String

          # @!parse
          #   # @return [String]
          #   attr_writer :memo

          # @!attribute [r] send_date
          #
          #   @return [Date, nil]
          optional :send_date, Date, api_name: :sendDate

          # @!parse
          #   # @return [Date]
          #   attr_writer :send_date

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param amount [Integer]
          #   # @param counterparty [Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty]
          #   # @param description [String]
          #   # @param idempotency_key [String]
          #   # @param memo [String]
          #   # @param send_date [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(amount:, counterparty:, description:, idempotency_key:, memo: nil, send_date: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # counterparty => {
          #   address: Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty::Address,
          #   name: String,
          #   counterparty_moved: Unit::BooleanModel
          # }
          # ```
          class Counterparty < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty::Address]
            required :address,
                     -> {
                       Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty::Address
                     }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute [r] counterparty_moved
            #
            #   @return [Boolean, nil]
            optional :counterparty_moved, Unit::BooleanModel, api_name: :counterpartyMoved

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :counterparty_moved

            # @!parse
            #   # @param address [Unit::Models::CheckPaymentCreateParams::Data::Attributes::Counterparty::Address]
            #   # @param name [String]
            #   # @param counterparty_moved [Boolean]
            #   #
            #   def initialize(address:, name:, counterparty_moved: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String, nil?: true

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account,
        #   customer: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer }

          # @!parse
          #   # @param account [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer]
          #   #
          #   def initialize(account:, customer:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentCreateParams::Data::Relationships::Account::Data::Type
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
          #   data: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentCreateParams::Data::Relationships::Customer::Data::Type
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
        # in :checkPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_PAYMENT = :checkPayment

          finalize!
        end
      end
    end
  end
end
