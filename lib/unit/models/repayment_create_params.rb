# frozen_string_literal: true

module Unit
  module Models
    class RepaymentCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment]
      required :data, union: -> { Unit::Models::RepaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment
      #   # ...
      # in Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment
      #   # ...
      # in Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment
      #   # ...
      # in Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment }

        variant -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment }

        variant -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment }

        variant -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment }

        class CreateBookRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Type]
          required :type, enum: -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Attributes]
          #   # @param relationships [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute transaction_summary_override
            #
            #   @return [String]
            optional :transaction_summary_override, String, api_name: :transactionSummaryOverride

            # @!parse
            #   # @param amount [Float]
            #   # @param description [String]
            #   # @param transaction_summary_override [String]
            #   #
            #   def initialize(amount:, description:, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account }

            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param account [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account]
            #   # @param counterparty_account [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount]
            #   # @param credit_account [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(account:, counterparty_account:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CounterpartyAccount::Data::Type
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

            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment::Relationships::CreditAccount::Data::Type
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
          #
          # ```ruby
          # case enum
          # in :bookRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BOOK_REPAYMENT = :bookRepayment

            finalize!
          end
        end

        class CreateCapitalPartnerBookRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Attributes]
          #   # @param relationships [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute transaction_summary_override
            #
            #   @return [String]
            optional :transaction_summary_override, String, api_name: :transactionSummaryOverride

            # @!parse
            #   # @param amount [Float]
            #   # @param description [String]
            #   # @param transaction_summary_override [String]
            #   #
            #   def initialize(amount:, description:, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param counterparty_account [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount]
            #   # @param credit_account [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(counterparty_account:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class CounterpartyAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CounterpartyAccount::Data::Type
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

            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment::Relationships::CreditAccount::Data::Type
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
          #
          # ```ruby
          # case enum
          # in :capitalPartnerBookRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CAPITAL_PARTNER_BOOK_REPAYMENT = :capitalPartnerBookRepayment

            finalize!
          end
        end

        class CreateACHRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Attributes
                   }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Type]
          required :type, enum: -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Attributes]
          #   # @param relationships [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!attribute sec_code
            #
            #   @return [String]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @param amount [Float]
            #   # @param description [String]
            #   # @param addenda [String]
            #   # @param same_day [Boolean]
            #   # @param sec_code [String]
            #   #
            #   def initialize(amount:, description:, addenda: nil, same_day: nil, sec_code: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account }

            # @!attribute counterparty
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty }

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param account [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account]
            #   # @param counterparty [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty]
            #   # @param credit_account [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(account:, counterparty:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::Counterparty::Data::Type
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

            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment::Relationships::CreditAccount::Data::Type
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
          #
          # ```ruby
          # case enum
          # in :achRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_REPAYMENT = :achRepayment

            finalize!
          end
        end

        class CreateCapitalPartnerACHRepayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Attributes]
          #   # @param relationships [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

            # @!attribute sec_code
            #
            #   @return [String]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @param amount [Float]
            #   # @param description [String]
            #   # @param addenda [String]
            #   # @param same_day [Boolean]
            #   # @param sec_code [String]
            #   #
            #   def initialize(amount:, description:, addenda: nil, same_day: nil, sec_code: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute counterparty
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty }

            # @!attribute credit_account
            #
            #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount]
            required :credit_account,
                     -> {
                       Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount
                     },
                     api_name: :creditAccount

            # @!parse
            #   # @param counterparty [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty]
            #   # @param credit_account [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount]
            #   #
            #   def initialize(counterparty:, credit_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::Counterparty::Data::Type
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

            class CreditAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount::Data]
              required :data,
                       -> { Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount::Data]
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
                #   @return [Symbol, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment::Relationships::CreditAccount::Data::Type
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
          #
          # ```ruby
          # case enum
          # in :capitalPartnerAchRepayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CAPITAL_PARTNER_ACH_REPAYMENT = :capitalPartnerAchRepayment

            finalize!
          end
        end
      end
    end
  end
end
