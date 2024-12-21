# frozen_string_literal: true

module Unit
  module Models
    class PaymentCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid, Unit::Models::PaymentCreateParams::Data::CreateBookPayment, Unit::Models::PaymentCreateParams::Data::CreateWirePayment, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment]
      optional :data, union: -> { Unit::Models::PaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateACHPayment, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid, Unit::Models::PaymentCreateParams::Data::CreateBookPayment, Unit::Models::PaymentCreateParams::Data::CreateWirePayment, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::PaymentCreateParams::Data::CreateACHPayment
      #   # ...
      # in Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty
      #   # ...
      # in Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid
      #   # ...
      # in Unit::Models::PaymentCreateParams::Data::CreateBookPayment
      #   # ...
      # in Unit::Models::PaymentCreateParams::Data::CreateWirePayment
      #   # ...
      # in Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment }

        variant -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty }

        variant -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid }

        variant -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment }

        variant -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment }

        variant -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment }

        class CreateACHPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes]
          required :attributes, -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Type]
          optional :type, enum: -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute counterparty
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Counterparty]
            required :counterparty,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Counterparty }

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute direction
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Direction]
            required :direction,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Direction
                     }

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!attribute sec_code
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::SecCode]
            optional :sec_code,
                     api_name: :secCode,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::SecCode
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param amount [Integer]
            #   # @param counterparty [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Counterparty]
            #   # @param description [String]
            #   # @param direction [String]
            #   # @param addenda [String, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param same_day [Boolean, nil]
            #   # @param sec_code [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(
            #     amount:,
            #     counterparty:,
            #     description:,
            #     direction:,
            #     addenda: nil,
            #     idempotency_key: nil,
            #     same_day: nil,
            #     sec_code: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Counterparty < Unit::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String, api_name: :accountNumber

              # @!attribute account_type
              #
              #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Counterparty::AccountType]
              required :account_type,
                       api_name: :accountType,
                       enum: -> {
                         Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Attributes::Counterparty::AccountType
                       }

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String, api_name: :routingNumber

              # @!parse
              #   # @param account_number [String]
              #   # @param account_type [String]
              #   # @param name [String]
              #   # @param routing_number [String]
              #   #
              #   def initialize(account_number:, account_type:, name:, routing_number:, **) = super

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
            end

            # @example
            #
            # ```ruby
            # case enum
            # in :Debit
            #   # ...
            # in :Credit
            #   # ...
            # end
            # ```
            class Direction < Unit::Enum
              DEBIT = :Debit
              CREDIT = :Credit

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
            # in :WEB
            #   # ...
            # in :CCD
            #   # ...
            # in :PPD
            #   # ...
            # end
            # ```
            class SecCode < Unit::Enum
              WEB = :WEB
              CCD = :CCD
              PPD = :PPD

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account }

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateACHPayment::Relationships::Account::Data::Type
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_PAYMENT = :achPayment

            finalize!
          end
        end

        class CreateACHPaymentCounterparty < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes]
          required :attributes,
                   -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships]
          required :relationships,
                   -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Type]
          optional :type,
                   enum: -> {
                     Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute direction
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes::Direction]
            required :direction,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes::Direction
                     }

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!attribute sec_code
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes::SecCode]
            optional :sec_code,
                     api_name: :secCode,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Attributes::SecCode
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute verify_counterparty_balance
            #
            #   @return [Boolean]
            optional :verify_counterparty_balance, Unit::BooleanModel, api_name: :verifyCounterpartyBalance

            # @!parse
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param direction [String]
            #   # @param addenda [String, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param same_day [Boolean, nil]
            #   # @param sec_code [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param verify_counterparty_balance [Boolean, nil]
            #   #
            #   def initialize(
            #     amount:,
            #     description:,
            #     direction:,
            #     addenda: nil,
            #     idempotency_key: nil,
            #     same_day: nil,
            #     sec_code: nil,
            #     tags: nil,
            #     verify_counterparty_balance: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :Debit
            #   # ...
            # in :Credit
            #   # ...
            # end
            # ```
            class Direction < Unit::Enum
              DEBIT = :Debit
              CREDIT = :Credit

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
            # in :WEB
            #   # ...
            # in :CCD
            #   # ...
            # in :PPD
            #   # ...
            # end
            # ```
            class SecCode < Unit::Enum
              WEB = :WEB
              CCD = :CCD
              PPD = :PPD

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account }

            # @!attribute counterparty
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty }

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account]
            #   # @param counterparty [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty]
            #   #
            #   def initialize(account:, counterparty:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Account::Data::Type
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

            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty::Relationships::Counterparty::Data::Type
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
                # in :counterparty
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  COUNTERPARTY = :counterparty

                  finalize!
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_PAYMENT = :achPayment

            finalize!
          end
        end

        class CreateACHPaymentPlaid < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships]
          required :relationships,
                   -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Type]
          optional :type, enum: -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute direction
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes::Direction]
            required :direction,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes::Direction
                     }

            # @!attribute plaid_processor_token
            #
            #   @return [String]
            required :plaid_processor_token, String, api_name: :plaidProcessorToken

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute counterparty_name
            #
            #   @return [String]
            optional :counterparty_name, String, api_name: :counterpartyName

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!attribute sec_code
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes::SecCode]
            optional :sec_code,
                     api_name: :secCode,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Attributes::SecCode
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute verify_counterparty_balance
            #
            #   @return [Boolean]
            optional :verify_counterparty_balance, Unit::BooleanModel, api_name: :verifyCounterpartyBalance

            # @!parse
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param direction [String]
            #   # @param plaid_processor_token [String]
            #   # @param addenda [String, nil]
            #   # @param counterparty_name [String, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param same_day [Boolean, nil]
            #   # @param sec_code [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param verify_counterparty_balance [Boolean, nil]
            #   #
            #   def initialize(
            #     amount:,
            #     description:,
            #     direction:,
            #     plaid_processor_token:,
            #     addenda: nil,
            #     counterparty_name: nil,
            #     idempotency_key: nil,
            #     same_day: nil,
            #     sec_code: nil,
            #     tags: nil,
            #     verify_counterparty_balance: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :Debit
            #   # ...
            # in :Credit
            #   # ...
            # end
            # ```
            class Direction < Unit::Enum
              DEBIT = :Debit
              CREDIT = :Credit

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
            # in :WEB
            #   # ...
            # in :CCD
            #   # ...
            # in :PPD
            #   # ...
            # end
            # ```
            class SecCode < Unit::Enum
              WEB = :WEB
              CCD = :CCD
              PPD = :PPD

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account }

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid::Relationships::Account::Data::Type
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_PAYMENT = :achPayment

            finalize!
          end
        end

        class CreateBookPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Attributes]
          required :attributes, -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Type]
          optional :type, enum: -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute transaction_summary_override
            #
            #   @return [String]
            optional :transaction_summary_override, String, api_name: :transactionSummaryOverride

            # @!parse
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param transaction_summary_override [String, nil]
            #   #
            #   def initialize(amount:, description:, idempotency_key: nil, tags: nil, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account }

            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account]
            #   # @param counterparty_account [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount]
            #   #
            #   def initialize(account:, counterparty_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::Account::Data::Type
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

            class CounterpartyAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateBookPayment::Relationships::CounterpartyAccount::Data::Type
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
                # in :account
                #   # ...
                # in :depositAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  ACCOUNT = :account
                  DEPOSIT_ACCOUNT = :depositAccount

                  finalize!
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :bookPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BOOK_PAYMENT = :bookPayment

            finalize!
          end
        end

        class CreateWirePayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes]
          required :attributes, -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Type]
          optional :type, enum: -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute counterparty
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty]
            required :counterparty,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty }

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute direction
            #
            #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Direction]
            optional :direction,
                     enum: -> {
                       Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Direction
                     }

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param amount [Integer]
            #   # @param counterparty [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty]
            #   # @param description [String]
            #   # @param direction [String, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(amount:, counterparty:, description:, direction: nil, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Counterparty < Unit::BaseModel
              # @!attribute account_number
              #
              #   @return [String]
              required :account_number, String, api_name: :accountNumber

              # @!attribute address
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty::Address]
              required :address,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty::Address }

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute routing_number
              #
              #   @return [String]
              required :routing_number, String, api_name: :routingNumber

              # @!parse
              #   # @param account_number [String]
              #   # @param address [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Attributes::Counterparty::Address]
              #   # @param name [String]
              #   # @param routing_number [String]
              #   #
              #   def initialize(account_number:, address:, name:, routing_number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

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
                #   @return [String]
                optional :street2, String

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

            # @example
            #
            # ```ruby
            # case enum
            # in :Credit
            #   # ...
            # end
            # ```
            class Direction < Unit::Enum
              CREDIT = :Credit

              finalize!
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account }

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreateWirePayment::Relationships::Account::Data::Type
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :wirePayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            WIRE_PAYMENT = :wirePayment

            finalize!
          end
        end

        class CreatePushToCardPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships]
          required :relationships,
                   -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Type]
          optional :type, enum: -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes]
          #   # @param relationships [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships]
          #   # @param type [String, nil]
          #   #
          #   def initialize(attributes:, relationships:, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute configuration
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration]
            required :configuration,
                     -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration }

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param amount [Integer]
            #   # @param configuration [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration]
            #   # @param description [String]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(amount:, configuration:, description:, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Configuration < Unit::BaseModel
              # @!attribute astra
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration::Astra]
              optional :astra,
                       -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration::Astra }

              # @!parse
              #   # @param astra [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Attributes::Configuration::Astra, nil]
              #   #
              #   def initialize(astra: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              class Astra < Unit::BaseModel
                # @!attribute account_number
                #
                #   @return [String]
                required :account_number, String, api_name: :accountNumber

                # @!attribute debit_fee_percent
                #
                #   @return [Float]
                required :debit_fee_percent, Float, api_name: :debitFeePercent

                # @!attribute destination_card_id
                #
                #   @return [String]
                required :destination_card_id, String, api_name: :destinationCardId

                # @!attribute institution_id
                #
                #   @return [String]
                required :institution_id, String, api_name: :institutionId

                # @!attribute reference_id
                #
                #   @return [String]
                required :reference_id, String, api_name: :referenceId

                # @!attribute routing_number
                #
                #   @return [String]
                required :routing_number, String, api_name: :routingNumber

                # @!attribute account_name
                #
                #   @return [String]
                optional :account_name, String, api_name: :accountName

                # @!attribute auth_token
                #
                #   @return [String]
                optional :auth_token, String, api_name: :authToken

                # @!parse
                #   # @param account_number [String]
                #   # @param debit_fee_percent [Float]
                #   # @param destination_card_id [String]
                #   # @param institution_id [String]
                #   # @param reference_id [String]
                #   # @param routing_number [String]
                #   # @param account_name [String, nil]
                #   # @param auth_token [String, nil]
                #   #
                #   def initialize(
                #     account_number:,
                #     debit_fee_percent:,
                #     destination_card_id:,
                #     institution_id:,
                #     reference_id:,
                #     routing_number:,
                #     account_name: nil,
                #     auth_token: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void
              end
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account }

            # @!parse
            #   # @param account [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment::Relationships::Account::Data::Type
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :pushToCardPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            PUSH_TO_CARD_PAYMENT = :pushToCardPayment

            finalize!
          end
        end
      end
    end
  end
end