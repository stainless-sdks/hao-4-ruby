# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty]
      optional :data, union: -> { Unit::Models::CounterpartyCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty
      #   # ...
      # in Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty }

        variant -> { Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty }

        class CreateACHCounterparty < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes]
          required :attributes,
                   -> { Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships]
          required :relationships,
                   -> { Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes]
          #   # @param relationships [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute account_number
            #
            #   @return [String]
            required :account_number, String, api_name: :accountNumber

            # @!attribute account_type
            #
            #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::AccountType]
            required :account_type,
                     api_name: :accountType,
                     enum: -> {
                       Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::AccountType
                     }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute routing_number
            #
            #   @return [String]
            required :routing_number, String, api_name: :routingNumber

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::Type]
            required :type,
                     enum: -> {
                       Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::Type
                     }

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute permissions
            #
            #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::Permissions]
            optional :permissions,
                     enum: -> {
                       Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Attributes::Permissions
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param account_number [String]
            #   # @param account_type [String]
            #   # @param name [String]
            #   # @param routing_number [String]
            #   # @param type [String]
            #   # @param idempotency_key [String, nil]
            #   # @param permissions [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(
            #     account_number:,
            #     account_type:,
            #     name:,
            #     routing_number:,
            #     type:,
            #     idempotency_key: nil,
            #     permissions: nil,
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

              finalize!
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

              finalize!
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

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer }

            # @!parse
            #   # @param customer [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer]
            #   #
            #   def initialize(customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty::Relationships::Customer::Data::Type
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
          # in :achCounterparty
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_COUNTERPARTY = :achCounterparty

            finalize!
          end
        end

        class CreatePlaidCounterparty < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes]
          required :attributes,
                   -> { Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships]
          required :relationships,
                   -> { Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes]
          #   # @param relationships [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute plaid_processor_token
            #
            #   @return [String]
            required :plaid_processor_token, String, api_name: :plaidProcessorToken

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes::Type]
            required :type,
                     enum: -> {
                       Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes::Type
                     }

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute name
            #
            #   @return [String]
            optional :name, String

            # @!attribute permissions
            #
            #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes::Permissions]
            optional :permissions,
                     enum: -> {
                       Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Attributes::Permissions
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute verify_name
            #
            #   @return [Boolean]
            optional :verify_name, Unit::BooleanModel, api_name: :verifyName

            # @!parse
            #   # @param plaid_processor_token [String]
            #   # @param type [String]
            #   # @param idempotency_key [String, nil]
            #   # @param name [String, nil]
            #   # @param permissions [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param verify_name [Boolean, nil]
            #   #
            #   def initialize(
            #     plaid_processor_token:,
            #     type:,
            #     idempotency_key: nil,
            #     name: nil,
            #     permissions: nil,
            #     tags: nil,
            #     verify_name: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

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

              finalize!
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

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer }

            # @!parse
            #   # @param customer [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer]
            #   #
            #   def initialize(customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty::Relationships::Customer::Data::Type
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
end
