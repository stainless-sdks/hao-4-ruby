# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment]
      required :data, union: -> { Unit::Models::RecurringPaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment
      #   # ...
      # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment
      #   # ...
      # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        discriminator :type

        variant :recurringDebitAchPayment,
                -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment }

        variant :recurringCreditBookPayment,
                -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment }

        variant -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment }

        class CreateRecurringCreditACHPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

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

            # @!attribute schedule
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule]
            required :schedule,
                     union: -> {
                       Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule
                     }

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

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
            #   # @param description [String]
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param addenda [String, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(amount:, description:, schedule:, addenda: nil, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case union
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule
            #   # ...
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule
            #   # ...
            # end
            # ```
            class Schedule < Unit::Union
              discriminator :interval

              variant :Weekly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule }

              variant :Monthly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule }

              class WeeklySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval
                         }

                # @!attribute next_scheduled_action
                #
                #   @return [Date]
                required :next_scheduled_action, Date, api_name: :nextScheduledAction

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly
                end
              end

              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                optional :day_of_week,
                         api_name: :dayOfWeek,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         }

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param day_of_week [String, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly
                end

                # @example
                #
                # ```ruby
                # case enum
                # in :Sunday
                #   # ...
                # in :Monday
                #   # ...
                # in :Tuesday
                #   # ...
                # in :Wednesday
                #   # ...
                # in :Thursday
                #   # ...
                # in ...
                #   #...
                # end
                # ```
                class DayOfWeek < Unit::Enum
                  SUNDAY = :Sunday
                  MONDAY = :Monday
                  TUESDAY = :Tuesday
                  WEDNESDAY = :Wednesday
                  THURSDAY = :Thursday
                  FRIDAY = :Friday
                  SATURDAY = :Saturday
                end
              end
            end

            class WeeklySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval
                       }

              # @!attribute next_scheduled_action
              #
              #   @return [Date]
              required :next_scheduled_action, Date, api_name: :nextScheduledAction

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param next_scheduled_action [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     next_scheduled_action:,
              #     day_of_month: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Weekly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                WEEKLY = :Weekly
              end
            end

            class MonthlySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                       }

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute day_of_week
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
              optional :day_of_week,
                       api_name: :dayOfWeek,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                       }

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param day_of_week [String, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     day_of_month: nil,
              #     day_of_week: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Monthly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                MONTHLY = :Monthly
              end

              # @example
              #
              # ```ruby
              # case enum
              # in :Sunday
              #   # ...
              # in :Monday
              #   # ...
              # in :Tuesday
              #   # ...
              # in :Wednesday
              #   # ...
              # in :Thursday
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class DayOfWeek < Unit::Enum
                SUNDAY = :Sunday
                MONDAY = :Monday
                TUESDAY = :Tuesday
                WEDNESDAY = :Wednesday
                THURSDAY = :Thursday
                FRIDAY = :Friday
                SATURDAY = :Saturday
              end
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account }

            # @!attribute counterparty
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty }

            # @!parse
            #   # @param account [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account]
            #   # @param counterparty [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty]
            #   #
            #   def initialize(account:, counterparty:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data::Type
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
                end
              end
            end

            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data::Type
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
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :recurringCreditAchPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CREDIT_ACH_PAYMENT = :recurringCreditAchPayment
          end
        end

        class CreateRecurringDebitACHPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

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

            # @!attribute schedule
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule]
            required :schedule,
                     union: -> {
                       Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule
                     }

            # @!attribute addenda
            #
            #   @return [String]
            optional :addenda, String

            # @!attribute clearing_days_override
            #
            #   @return [Integer]
            optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute same_day
            #
            #   @return [Boolean]
            optional :same_day, Unit::BooleanModel, api_name: :sameDay

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
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param addenda [String, nil]
            #   # @param clearing_days_override [Integer, nil]
            #   # @param idempotency_key [String, nil]
            #   # @param same_day [Boolean, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param verify_counterparty_balance [Boolean, nil]
            #   #
            #   def initialize(
            #     amount:,
            #     description:,
            #     schedule:,
            #     addenda: nil,
            #     clearing_days_override: nil,
            #     idempotency_key: nil,
            #     same_day: nil,
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
            # case union
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule
            #   # ...
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule
            #   # ...
            # end
            # ```
            class Schedule < Unit::Union
              discriminator :interval

              variant :Weekly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule }

              variant :Monthly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule }

              class WeeklySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval
                         }

                # @!attribute next_scheduled_action
                #
                #   @return [Date]
                required :next_scheduled_action, Date, api_name: :nextScheduledAction

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly
                end
              end

              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                optional :day_of_week,
                         api_name: :dayOfWeek,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         }

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param day_of_week [String, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly
                end

                # @example
                #
                # ```ruby
                # case enum
                # in :Sunday
                #   # ...
                # in :Monday
                #   # ...
                # in :Tuesday
                #   # ...
                # in :Wednesday
                #   # ...
                # in :Thursday
                #   # ...
                # in ...
                #   #...
                # end
                # ```
                class DayOfWeek < Unit::Enum
                  SUNDAY = :Sunday
                  MONDAY = :Monday
                  TUESDAY = :Tuesday
                  WEDNESDAY = :Wednesday
                  THURSDAY = :Thursday
                  FRIDAY = :Friday
                  SATURDAY = :Saturday
                end
              end
            end

            class WeeklySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval
                       }

              # @!attribute next_scheduled_action
              #
              #   @return [Date]
              required :next_scheduled_action, Date, api_name: :nextScheduledAction

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param next_scheduled_action [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     next_scheduled_action:,
              #     day_of_month: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Weekly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                WEEKLY = :Weekly
              end
            end

            class MonthlySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                       }

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute day_of_week
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
              optional :day_of_week,
                       api_name: :dayOfWeek,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                       }

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param day_of_week [String, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     day_of_month: nil,
              #     day_of_week: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Monthly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                MONTHLY = :Monthly
              end

              # @example
              #
              # ```ruby
              # case enum
              # in :Sunday
              #   # ...
              # in :Monday
              #   # ...
              # in :Tuesday
              #   # ...
              # in :Wednesday
              #   # ...
              # in :Thursday
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class DayOfWeek < Unit::Enum
                SUNDAY = :Sunday
                MONDAY = :Monday
                TUESDAY = :Tuesday
                WEDNESDAY = :Wednesday
                THURSDAY = :Thursday
                FRIDAY = :Friday
                SATURDAY = :Saturday
              end
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account }

            # @!attribute counterparty
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty }

            # @!parse
            #   # @param account [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account]
            #   # @param counterparty [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty]
            #   #
            #   def initialize(account:, counterparty:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data::Type
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
                end
              end
            end

            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data::Type
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
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :recurringDebitAchPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_DEBIT_ACH_PAYMENT = :recurringDebitAchPayment
          end
        end

        class CreateRecurringCreditBookPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes]
          required :attributes,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships]
          required :relationships,
                   -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Type]
          required :type,
                   enum: -> {
                     Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes]
          #   # @param relationships [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

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

            # @!attribute schedule
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule]
            required :schedule,
                     union: -> {
                       Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule
                     }

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
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param idempotency_key [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   # @param transaction_summary_override [String, nil]
            #   #
            #   def initialize(amount:, description:, schedule:, idempotency_key: nil, tags: nil, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case union
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule
            #   # ...
            # in Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule
            #   # ...
            # end
            # ```
            class Schedule < Unit::Union
              discriminator :interval

              variant :Weekly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule }

              variant :Monthly,
                      -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule }

              class WeeklySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval
                         }

                # @!attribute next_scheduled_action
                #
                #   @return [Date]
                required :next_scheduled_action, Date, api_name: :nextScheduledAction

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly
                end
              end

              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute day_of_month
                #
                #   @return [Integer]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!attribute day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                optional :day_of_week,
                         api_name: :dayOfWeek,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         }

                # @!attribute end_time
                #
                #   @return [Date]
                optional :end_time, Date, api_name: :endTime

                # @!attribute start_time
                #
                #   @return [Date]
                optional :start_time, Date, api_name: :startTime

                # @!attribute total_number_of_payments
                #
                #   @return [Integer]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @param interval [String]
                #   # @param day_of_month [Integer, nil]
                #   # @param day_of_week [String, nil]
                #   # @param end_time [String, nil]
                #   # @param start_time [String, nil]
                #   # @param total_number_of_payments [Integer, nil]
                #   #
                #   def initialize(
                #     interval:,
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly
                end

                # @example
                #
                # ```ruby
                # case enum
                # in :Sunday
                #   # ...
                # in :Monday
                #   # ...
                # in :Tuesday
                #   # ...
                # in :Wednesday
                #   # ...
                # in :Thursday
                #   # ...
                # in ...
                #   #...
                # end
                # ```
                class DayOfWeek < Unit::Enum
                  SUNDAY = :Sunday
                  MONDAY = :Monday
                  TUESDAY = :Tuesday
                  WEDNESDAY = :Wednesday
                  THURSDAY = :Thursday
                  FRIDAY = :Friday
                  SATURDAY = :Saturday
                end
              end
            end

            class WeeklySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval
                       }

              # @!attribute next_scheduled_action
              #
              #   @return [Date]
              required :next_scheduled_action, Date, api_name: :nextScheduledAction

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param next_scheduled_action [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     next_scheduled_action:,
              #     day_of_month: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Weekly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                WEEKLY = :Weekly
              end
            end

            class MonthlySchedule < Unit::BaseModel
              # @!attribute interval
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval]
              required :interval,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval
                       }

              # @!attribute day_of_month
              #
              #   @return [Integer]
              optional :day_of_month, Integer, api_name: :dayOfMonth

              # @!attribute day_of_week
              #
              #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
              optional :day_of_week,
                       api_name: :dayOfWeek,
                       enum: -> {
                         Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                       }

              # @!attribute end_time
              #
              #   @return [Date]
              optional :end_time, Date, api_name: :endTime

              # @!attribute start_time
              #
              #   @return [Date]
              optional :start_time, Date, api_name: :startTime

              # @!attribute total_number_of_payments
              #
              #   @return [Integer]
              optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

              # @!parse
              #   # @param interval [String]
              #   # @param day_of_month [Integer, nil]
              #   # @param day_of_week [String, nil]
              #   # @param end_time [String, nil]
              #   # @param start_time [String, nil]
              #   # @param total_number_of_payments [Integer, nil]
              #   #
              #   def initialize(
              #     interval:,
              #     day_of_month: nil,
              #     day_of_week: nil,
              #     end_time: nil,
              #     start_time: nil,
              #     total_number_of_payments: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :Monthly
              #   # ...
              # end
              # ```
              class Interval < Unit::Enum
                MONTHLY = :Monthly
              end

              # @example
              #
              # ```ruby
              # case enum
              # in :Sunday
              #   # ...
              # in :Monday
              #   # ...
              # in :Tuesday
              #   # ...
              # in :Wednesday
              #   # ...
              # in :Thursday
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class DayOfWeek < Unit::Enum
                SUNDAY = :Sunday
                MONDAY = :Monday
                TUESDAY = :Tuesday
                WEDNESDAY = :Wednesday
                THURSDAY = :Thursday
                FRIDAY = :Friday
                SATURDAY = :Saturday
              end
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account]
            required :account,
                     -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account }

            # @!attribute counterparty_account
            #
            #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount]
            required :counterparty_account,
                     -> {
                       Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount
                     },
                     api_name: :counterpartyAccount

            # @!parse
            #   # @param account [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account]
            #   # @param counterparty_account [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount]
            #   #
            #   def initialize(account:, counterparty_account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data::Type
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
                end
              end
            end

            class CounterpartyAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data]
              required :data,
                       -> { Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data]
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
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data::Type
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
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :recurringCreditBookPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CREDIT_BOOK_PAYMENT = :recurringCreditBookPayment
          end
        end
      end
    end
  end
end
