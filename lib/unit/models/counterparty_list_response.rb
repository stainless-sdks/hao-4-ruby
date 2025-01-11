# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # counterparty_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::CounterpartyListResponse::Data] === _1 }
    # }
    # ```
    class CounterpartyListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::CounterpartyListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::CounterpartyListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::CounterpartyListResponse::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::CounterpartyListResponse::Data::Attributes,
      #   relationships: Unit::Models::CounterpartyListResponse::Data::Relationships,
      #   type: Unit::Models::CounterpartyListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CounterpartyListResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::CounterpartyListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CounterpartyListResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::CounterpartyListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CounterpartyListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CounterpartyListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CounterpartyListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CounterpartyListResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   account_number: String,
        #   account_type: Unit::Models::CounterpartyListResponse::Data::Attributes::AccountType,
        #   created_at: Time,
        #   name: String,
        #   permissions: Unit::Models::CounterpartyListResponse::Data::Attributes::Permissions,
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
          #   @return [Symbol, Unit::Models::CounterpartyListResponse::Data::Attributes::AccountType]
          required :account_type,
                   api_name: :accountType,
                   enum: -> { Unit::Models::CounterpartyListResponse::Data::Attributes::AccountType }

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
          #   @return [Symbol, Unit::Models::CounterpartyListResponse::Data::Attributes::Permissions]
          required :permissions,
                   enum: -> {
                     Unit::Models::CounterpartyListResponse::Data::Attributes::Permissions
                   }

          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String, api_name: :routingNumber

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CounterpartyListResponse::Data::Attributes::Type]
          required :type, enum: -> { Unit::Models::CounterpartyListResponse::Data::Attributes::Type }

          # @!attribute bank
          #
          #   @return [String]
          optional :bank, String

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param account_number [String]
          #   # @param account_type [String]
          #   # @param created_at [String]
          #   # @param name [String]
          #   # @param permissions [String]
          #   # @param routing_number [String]
          #   # @param type [String]
          #   # @param bank [String]
          #   # @param tags [Hash{Symbol => String}]
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
          #
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
          #
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
          #
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
        #
        # ```ruby
        # relationships => {
        #   customer: Unit::Models::CounterpartyListResponse::Data::Relationships::Customer
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute customer
          #
          #   @return [Unit::Models::CounterpartyListResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::CounterpartyListResponse::Data::Relationships::Customer }

          # @!parse
          #   # @param customer [Unit::Models::CounterpartyListResponse::Data::Relationships::Customer]
          #   #
          #   def initialize(customer:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # customer => {
          #   data: Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CounterpartyListResponse::Data::Relationships::Customer::Data::Type
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
