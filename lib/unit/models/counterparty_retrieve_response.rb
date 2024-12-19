# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CounterpartyRetrieveResponse::Data]
      optional :data, -> { Unit::Models::CounterpartyRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CounterpartyRetrieveResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CounterpartyRetrieveResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::CounterpartyRetrieveResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::CounterpartyRetrieveResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CounterpartyRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CounterpartyRetrieveResponse::Data::Type }

        # @!parse
        #   # @param id [String, nil]
        #   # @param attributes [Unit::Models::CounterpartyRetrieveResponse::Data::Attributes, nil]
        #   # @param relationships [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute account_number
          #
          #   @return [String]
          required :account_number, String, api_name: :accountNumber

          # @!attribute account_type
          #
          #   @return [Symbol, Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::AccountType]
          required :account_type,
                   api_name: :accountType,
                   enum: -> { Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::AccountType }

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
          #   @return [Symbol, Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::Permissions]
          required :permissions,
                   enum: -> { Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::Permissions }

          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String, api_name: :routingNumber

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::Type]
          required :type, enum: -> { Unit::Models::CounterpartyRetrieveResponse::Data::Attributes::Type }

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
          #   # @param bank [String, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
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
          # case enum
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
          end

          # @example
          #
          # ```ruby
          # case enum
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
          end

          # @example
          #
          # ```ruby
          # case enum
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
          end
        end

        class Relationships < Unit::BaseModel
          # @!attribute customer
          #
          #   @return [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer }

          # @!parse
          #   # @param customer [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer]
          #   #
          #   def initialize(customer:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CounterpartyRetrieveResponse::Data::Relationships::Customer::Data::Type
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
        # in :achCounterparty
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_COUNTERPARTY = :achCounterparty
        end
      end
    end
  end
end
