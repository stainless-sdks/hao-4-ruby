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
        # ```ruby
        # create_credit_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships,
        #   type: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type
        # }
        # ```
        class CreateCreditAccount < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes, nil]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes
                   }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships, nil]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships]
          #   attr_writer :relationships

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type, nil]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
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

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param credit_limit [Integer]
            #   # @param credit_terms [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(credit_limit:, credit_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
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
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::AccountCreateParams::Data::CreateCreditAccount::Relationships::Customer::Data::Type
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
        # ```ruby
        # create_deposit_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships,
        #   type: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type
        # }
        # ```
        class CreateDepositAccount < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes, nil]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes
                   }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships, nil]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships]
          #   attr_writer :relationships

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type, nil]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
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

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param deposit_product [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(deposit_product:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   customer: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer,
          #   customers: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute [r] customer
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer, nil]
            optional :customer,
                     -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer }

            # @!parse
            #   # @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer]
            #   attr_writer :customer

            # @!attribute [r] customers
            #
            #   @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers, nil]
            optional :customers,
                     -> { Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers }

            # @!parse
            #   # @return [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers]
            #   attr_writer :customers

            # @!parse
            #   # @param customer [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer]
            #   # @param customers [Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customers]
            #   #
            #   def initialize(customer: nil, customers: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
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
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::AccountCreateParams::Data::CreateDepositAccount::Relationships::Customer::Data::Type
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
              # ```ruby
              # data => {
              #   id: String,
              #   type: String
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

                # @!attribute [r] type
                #
                #   @return [String, nil]
                optional :type, String

                # @!parse
                #   # @return [String]
                #   attr_writer :type

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
        # ```ruby
        # create_wallet_account => {
        #   attributes: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes,
        #   relationships: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships,
        #   type: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type
        # }
        # ```
        class CreateWalletAccount < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes, nil]
          optional :attributes,
                   -> {
                     Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes
                   }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] relationships
          #
          #   @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships, nil]
          optional :relationships,
                   -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships }

          # @!parse
          #   # @return [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships]
          #   attr_writer :relationships

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type, nil]
          optional :type, enum: -> { Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Attributes]
          #   # @param relationships [Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
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

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param wallet_terms [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(wallet_terms:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
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
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::AccountCreateParams::Data::CreateWalletAccount::Relationships::Customer::Data::Type
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
