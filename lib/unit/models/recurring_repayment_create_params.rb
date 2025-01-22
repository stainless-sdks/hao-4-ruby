# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentCreateParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment, nil]
      optional :data, union: -> { Unit::Models::RecurringRepaymentCreateParams::Data }

      # @!parse
      #   # @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case data
      # in Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment
      #   # ...
      # in Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment
      #   # ...
      # in Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment
      #   # ...
      # in Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        discriminator :type

        variant -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment }

        variant -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment }

        variant -> {
          Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment
        }

        variant -> {
          Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment
        }

        # @example
        # ```ruby
        # create_recurring_ach_repayment => {
        #   attributes: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Attributes,
        #   relationships: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships,
        #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Type
        # }
        # ```
        class CreateRecurringACHRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   description: String,
          #   addenda: String,
          #   idempotency_key: String,
          #   same_day: Unit::BooleanModel,
          #   sec_code: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute [r] addenda
            #
            #   @return [String, nil]
            optional :addenda, String

            # @!parse
            #   # @return [String]
            #   attr_writer :addenda

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] same_day
            #
            #   @return [Boolean, nil]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :same_day

            # @!attribute [r] sec_code
            #
            #   @return [String, nil]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @return [String]
            #   attr_writer :sec_code

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param description [String]
            #   # @param addenda [String]
            #   # @param idempotency_key [String]
            #   # @param same_day [Boolean]
            #   # @param sec_code [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(description:, addenda: nil, idempotency_key: nil, same_day: nil, sec_code: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account,
          #   counterparty: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty,
          #   credit_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account }

            # @!attribute counterparty
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty }

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account]
            #   # @param counterparty [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty]
            #   # @param credit_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(account:, counterparty:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Account::Data::Type
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
            # counterparty => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data
            # }
            # ```
            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::Counterparty::Data::Type
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

            # @example
            # ```ruby
            # credit_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data
            # }
            # ```
            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment::Relationships::CreditAccount::Data::Type
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
                # in :creditAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  CREDIT_ACCOUNT = :creditAccount

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :recurringAchRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_ACH_REPAYMENT = :recurringAchRepayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_recurring_book_repayment => {
        #   attributes: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Attributes,
        #   relationships: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships,
        #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Type
        # }
        # ```
        class CreateRecurringBookRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   description: String,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 },
          #   transaction_summary_override: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

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

            # @!attribute [r] transaction_summary_override
            #
            #   @return [String, nil]
            optional :transaction_summary_override, String, api_name: :transactionSummaryOverride

            # @!parse
            #   # @return [String]
            #   attr_writer :transaction_summary_override

            # @!parse
            #   # @param description [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param transaction_summary_override [String]
            #   #
            #   def initialize(description:, idempotency_key: nil, tags: nil, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account,
          #   counterparty_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount,
          #   credit_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account }

            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account]
            #   # @param counterparty_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount]
            #   # @param credit_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(account:, counterparty_account:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::Account::Data::Type
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
            # counterparty_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data
            # }
            # ```
            class CounterpartyAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CounterpartyAccount::Data::Type
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
                # end
                # ```
                class Type < Unit::Enum
                  ACCOUNT = :account
                  DEPOSIT_ACCOUNT = :depositAccount

                  finalize!
                end
              end
            end

            # @example
            # ```ruby
            # credit_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data
            # }
            # ```
            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment::Relationships::CreditAccount::Data::Type
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
                # in :creditAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  CREDIT_ACCOUNT = :creditAccount

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :recurringBookRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_BOOK_REPAYMENT = :recurringBookRepayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_recurring_capital_partner_ach_repayment => {
        #   attributes: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Attributes,
        #   relationships: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships,
        #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Type
        # }
        # ```
        class CreateRecurringCapitalPartnerACHRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   description: String,
          #   addenda: String,
          #   idempotency_key: String,
          #   same_day: Unit::BooleanModel,
          #   sec_code: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute [r] addenda
            #
            #   @return [String, nil]
            optional :addenda, String

            # @!parse
            #   # @return [String]
            #   attr_writer :addenda

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] same_day
            #
            #   @return [Boolean, nil]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :same_day

            # @!attribute [r] sec_code
            #
            #   @return [String, nil]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @return [String]
            #   attr_writer :sec_code

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param description [String]
            #   # @param addenda [String]
            #   # @param idempotency_key [String]
            #   # @param same_day [Boolean]
            #   # @param sec_code [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(description:, addenda: nil, idempotency_key: nil, same_day: nil, sec_code: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   counterparty: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty,
          #   credit_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount,
          #   account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute counterparty
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty }

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!attribute [r] account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account, nil]
            optional :account,
                     -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account }

            # @!parse
            #   # @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account]
            #   attr_writer :account

            # @!parse
            #   # @param counterparty [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty]
            #   # @param credit_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount]
            #   # @param account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account]
            #   #
            #   def initialize(counterparty:, credit_account:, account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # counterparty => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data
            # }
            # ```
            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Counterparty::Data::Type
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

            # @example
            # ```ruby
            # credit_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data
            # }
            # ```
            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::CreditAccount::Data::Type
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
                # in :creditAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  CREDIT_ACCOUNT = :creditAccount

                  finalize!
                end
              end
            end

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment::Relationships::Account::Data::Type
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
          end

          # @example
          # ```ruby
          # case type
          # in :recurringCapitalPartnerAchRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CAPITAL_PARTNER_ACH_REPAYMENT = :recurringCapitalPartnerAchRepayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_recurring_capital_partner_book_repayment => {
        #   attributes: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Attributes,
        #   relationships: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships,
        #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Type
        # }
        # ```
        class CreateRecurringCapitalPartnerBookRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   description: String,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 },
          #   transaction_summary_override: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

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

            # @!attribute [r] transaction_summary_override
            #
            #   @return [String, nil]
            optional :transaction_summary_override, String, api_name: :transactionSummaryOverride

            # @!parse
            #   # @return [String]
            #   attr_writer :transaction_summary_override

            # @!parse
            #   # @param description [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param transaction_summary_override [String]
            #   #
            #   def initialize(description:, idempotency_key: nil, tags: nil, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # relationships => {
          #   counterparty_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount,
          #   credit_account: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param counterparty_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount]
            #   # @param credit_account [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(counterparty_account:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # counterparty_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data
            # }
            # ```
            class CounterpartyAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data::Type
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
                # end
                # ```
                class Type < Unit::Enum
                  ACCOUNT = :account
                  DEPOSIT_ACCOUNT = :depositAccount

                  finalize!
                end
              end
            end

            # @example
            # ```ruby
            # credit_account => {
            #   data: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data
            # }
            # ```
            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment::Relationships::CreditAccount::Data::Type
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
                # in :creditAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  CREDIT_ACCOUNT = :creditAccount

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :recurringCapitalPartnerBookRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CAPITAL_PARTNER_BOOK_REPAYMENT = :recurringCapitalPartnerBookRepayment

            finalize!
          end
        end
      end
    end
  end
end
