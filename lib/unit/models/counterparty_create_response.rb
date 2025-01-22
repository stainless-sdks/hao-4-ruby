# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # counterparty_create_response => {
    #   data: Unit::Models::CounterpartyCreateResponse::Data
    # }
    # ```
    class CounterpartyCreateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CounterpartyCreateResponse::Data, nil]
      optional :data, -> { Unit::Models::CounterpartyCreateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::CounterpartyCreateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CounterpartyCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::CounterpartyCreateResponse::Data::Attributes,
      #   relationships: Unit::Models::CounterpartyCreateResponse::Data::Relationships,
      #   type: Unit::Models::CounterpartyCreateResponse::Data::Type
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

        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::CounterpartyCreateResponse::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::CounterpartyCreateResponse::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::CounterpartyCreateResponse::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Unit::Models::CounterpartyCreateResponse::Data::Relationships, nil]
        optional :relationships, -> { Unit::Models::CounterpartyCreateResponse::Data::Relationships }

        # @!parse
        #   # @return [Unit::Models::CounterpartyCreateResponse::Data::Relationships]
        #   attr_writer :relationships

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CounterpartyCreateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CounterpartyCreateResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CounterpartyCreateResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   account_number: String,
        #   account_type: Unit::Models::CounterpartyCreateResponse::Data::Attributes::AccountType,
        #   created_at: Time,
        #   name: String,
        #   permissions: Unit::Models::CounterpartyCreateResponse::Data::Attributes::Permissions,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String, api_name: :accountNumber

          # @!attribute account_type
          #
          #   @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Attributes::AccountType]
          required :account_type,
                   enum: -> { Unit::Models::CounterpartyCreateResponse::Data::Attributes::AccountType },
                   api_name: :accountType

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute permissions
          #
          #   @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Attributes::Permissions]
          required :permissions,
                   enum: -> { Unit::Models::CounterpartyCreateResponse::Data::Attributes::Permissions }

          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String, api_name: :routingNumber

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Attributes::Type]
          required :type, enum: -> { Unit::Models::CounterpartyCreateResponse::Data::Attributes::Type }

          # @!attribute [r] bank
          #
          #   @return [String, nil]
          optional :bank, String

          # @!parse
          #   # @return [String]
          #   attr_writer :bank

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param account_number [String]
          #   # @param account_type [String]
          #   # @param created_at [String]
          #   # @param name [String]
          #   # @param permissions [String]
          #   # @param routing_number [String]
          #   # @param type [String]
          #   # @param bank [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(
          #     account_number:,
          #     account_type:,
          #     created_at:,
          #     name:,
          #     permissions:,
          #     routing_number:,
          #     type:,
          #     bank: nil,
          #     tags: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case account_type
          # in :Checking
          #   # ...
          # in :Savings
          #   # ...
          # in :Loan
          #   # ...
          # end
          # ```
          class AccountType < Unit::Enum
            CHECKING = :Checking
            SAVINGS = :Savings
            LOAN = :Loan

            finalize!
          end

          # @example
          # ```ruby
          # case permissions
          # in :CreditOnly
          #   # ...
          # in :DebitOnly
          #   # ...
          # in :CreditAndDebit
          #   # ...
          # end
          # ```
          class Permissions < Unit::Enum
            CREDIT_ONLY = :CreditOnly
            DEBIT_ONLY = :DebitOnly
            CREDIT_AND_DEBIT = :CreditAndDebit

            finalize!
          end

          # @example
          # ```ruby
          # case type
          # in :Business
          #   # ...
          # in :Person
          #   # ...
          # in :Unknown
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS = :Business
            PERSON = :Person
            UNKNOWN = :Unknown

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   customer: Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute customer
          #
          #   @return [Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer }

          # @!parse
          #   # @param customer [Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer]
          #   #
          #   def initialize(customer:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # customer => {
          #   data: Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CounterpartyCreateResponse::Data::Relationships::Customer::Data::Type
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
        # in :achCounterparty
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_COUNTERPARTY = :achCounterparty

          finalize!
        end
      end
    end
  end
end
