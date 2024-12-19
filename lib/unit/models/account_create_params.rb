# frozen_string_literal: true

module Unit
  module Models
    class AccountCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount, Unit::Models::AccountCreateParams::Data::CreateDepositAccount, Unit::Models::AccountCreateParams::Data::CreateWalletAccount]
      required :data, union: -> { Unit::Models::AccountCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AccountCreateParams::Data::CreateCreditAccount, Unit::Models::AccountCreateParams::Data::CreateDepositAccount, Unit::Models::AccountCreateParams::Data::CreateWalletAccount]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::AccountCreateParams::Data::CreateCreditAccount
      #   # ...
      # in Unit::Models::AccountCreateParams::Data::CreateDepositAccount
      #   # ...
      # in Unit::Models::AccountCreateParams::Data::CreateWalletAccount
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount }

        variant -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount }

        variant -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount }

        class CreateCreditAccount < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type }

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes, nil]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships, nil]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute credit_limit
            #
            #   @return [Integer]
            required :credit_limit, Integer, api_name: :creditLimit

            # @!attribute credit_terms
            #
            #   @return [String]
            required :credit_terms, String, api_name: :creditTerms

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param credit_limit [Integer]
            #   # @param credit_terms [String]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(credit_limit:, credit_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer }

            # @!parse
            #   # @param customer [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer]
            #   #
            #   def initialize(customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data::Type
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
          # in :creditAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CREDIT_ACCOUNT = :creditAccount
          end
        end

        class CreateDepositAccount < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type }

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes, nil]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships, nil]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute deposit_product
            #
            #   @return [String]
            required :deposit_product, String, api_name: :depositProduct

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param deposit_product [String]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(deposit_product:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer }

            # @!attribute customers
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers]
            optional :customers,
                     -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers }

            # @!parse
            #   # @param customer [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer, nil]
            #   # @param customers [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers, nil]
            #   #
            #   def initialize(customer: nil, customers: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data::Type
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

            class Customers < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Array<Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data>]
              required :data,
                       Unit::ArrayOf[-> {
                         Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data
                       }]

              # @!parse
              #   # @param data [Array<Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data>]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                optional :id, String

                # @!attribute type
                #
                #   @return [String]
                optional :type, String

                # @!parse
                #   # @param id [String, nil]
                #   # @param type [String, nil]
                #   #
                #   def initialize(id: nil, type: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :depositAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            DEPOSIT_ACCOUNT = :depositAccount
          end
        end

        class CreateWalletAccount < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type }

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes, nil]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships, nil]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute wallet_terms
            #
            #   @return [String]
            required :wallet_terms, String, api_name: :walletTerms

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param wallet_terms [String]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(wallet_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute customer
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer }

            # @!parse
            #   # @param customer [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer]
            #   #
            #   def initialize(customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data::Type
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
          # in :walletAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            WALLET_ACCOUNT = :walletAccount
          end
        end
      end
    end
  end
end
