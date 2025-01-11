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
      # case data
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

        # @example
        #
        # ```ruby
        # create_credit_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships,
        #   type: enum: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type
        # }
        # ```
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
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   credit_limit: Integer,
          #   credit_terms: String,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
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
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(credit_limit:, credit_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # relationships => {
          #   customer: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer
          # }
          # ```
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

            # @example
            #
            # ```ruby
            # customer => {
            #   data: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data
            # }
            # ```
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

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data::Type
              # }
              # ```
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
          # in :creditAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CREDIT_ACCOUNT = :creditAccount

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # create_deposit_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships,
        #   type: enum: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type
        # }
        # ```
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
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   deposit_product: String,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
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
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(deposit_product:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # relationships => {
          #   customer: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer,
          #   customers: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers
          # }
          # ```
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
            #   # @param customer [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer]
            #   # @param customers [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers]
            #   #
            #   def initialize(customer: nil, customers: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # customer => {
            #   data: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data
            # }
            # ```
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

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data::Type
              # }
              # ```
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

            # @example
            #
            # ```ruby
            # customers => {
            #   data: -> { Unit::ArrayOf[Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data] === _1 }
            # }
            # ```
            class Customers < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Array<Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data>]
              required :data,
                       -> {
                         Unit::ArrayOf[Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data]
                       }

              # @!parse
              #   # @param data [Array<Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers::Data>]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: String
              # }
              # ```
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
                #   # @param id [String]
                #   # @param type [String]
                #   #
                #   def initialize(id: nil, type: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void
              end
            end
          end

          # @example
          #
          # ```ruby
          # case type
          # in :depositAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            DEPOSIT_ACCOUNT = :depositAccount

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # create_wallet_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships,
        #   type: enum: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type
        # }
        # ```
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
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   wallet_terms: String,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
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
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(wallet_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # relationships => {
          #   customer: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer
          # }
          # ```
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

            # @example
            #
            # ```ruby
            # customer => {
            #   data: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data
            # }
            # ```
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

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data::Type
              # }
              # ```
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
          # in :walletAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            WALLET_ACCOUNT = :walletAccount

            finalize!
          end
        end
      end
    end
  end
end
