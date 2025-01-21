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
      # ```ruby
      # case data
      # in {type: "recurringDebitAchPayment", attributes: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes, relationships: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships, type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Type}
      #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment ...
      # in {type: "recurringCreditBookPayment", attributes: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes, relationships: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships, type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Type}
      #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case data
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

        # @example
        # ```ruby
        # create_recurring_credit_ach_payment => {
        #   attributes: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes,
        #   relationships: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships,
        #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   amount: Integer,
          #   description: String,
          #   schedule: union: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule,
          #   addenda: String,
          #   idempotency_key: String
          # }
          # ```
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

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param addenda [String]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(amount:, description:, schedule:, addenda: nil, idempotency_key: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # case schedule
            # in {interval: "Weekly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval, next_scheduled_action: Date, day_of_month: Integer}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule ...
            # in {interval: "Monthly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval, day_of_month: Integer, day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule ...
            # end
            # ```
            #
            # @example
            # ```ruby
            # case schedule
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

              # @example
              # ```ruby
              # weekly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::WeeklySchedule::Interval,
              #   next_scheduled_action: Date,
              #   day_of_month: Integer,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
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

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly

                  finalize!
                end
              end

              # @example
              # ```ruby
              # monthly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval,
              #   day_of_month: Integer,
              #   day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek, nil]
                optional :day_of_week,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         },
                         api_name: :dayOfWeek

                # @!parse
                #   # @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                #   attr_writer :day_of_week

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param day_of_month [Integer]
                #   # @param day_of_week [String]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly

                  finalize!
                end

                # @example
                # ```ruby
                # case day_of_week
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

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account,
          #   counterparty: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty
          # }
          # ```
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

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Account::Data::Type
              # }
              # ```
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
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment::Relationships::Counterparty::Data::Type
              # }
              # ```
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
          end

          # @example
          # ```ruby
          # case type
          # in :recurringCreditAchPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CREDIT_ACH_PAYMENT = :recurringCreditAchPayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_recurring_debit_ach_payment => {
        #   attributes: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes,
        #   relationships: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships,
        #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   amount: Integer,
          #   description: String,
          #   schedule: union: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule,
          #   addenda: String,
          #   clearing_days_override: Integer,
          #   **_
          # }
          # ```
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

            # @!attribute [r] addenda
            #
            #   @return [String, nil]
            optional :addenda, String

            # @!parse
            #   # @return [String]
            #   attr_writer :addenda

            # @!attribute [r] clearing_days_override
            #
            #   @return [Integer, nil]
            optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

            # @!parse
            #   # @return [Integer]
            #   attr_writer :clearing_days_override

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

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!attribute [r] verify_counterparty_balance
            #
            #   @return [Boolean, nil]
            optional :verify_counterparty_balance, Unit::BooleanModel, api_name: :verifyCounterpartyBalance

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :verify_counterparty_balance

            # @!parse
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param addenda [String]
            #   # @param clearing_days_override [Integer]
            #   # @param idempotency_key [String]
            #   # @param same_day [Boolean]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param verify_counterparty_balance [Boolean]
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
            # ```ruby
            # case schedule
            # in {interval: "Weekly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval, next_scheduled_action: Date, day_of_month: Integer}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule ...
            # in {interval: "Monthly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval, day_of_month: Integer, day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule ...
            # end
            # ```
            #
            # @example
            # ```ruby
            # case schedule
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

              # @example
              # ```ruby
              # weekly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::WeeklySchedule::Interval,
              #   next_scheduled_action: Date,
              #   day_of_month: Integer,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
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

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly

                  finalize!
                end
              end

              # @example
              # ```ruby
              # monthly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval,
              #   day_of_month: Integer,
              #   day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek, nil]
                optional :day_of_week,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         },
                         api_name: :dayOfWeek

                # @!parse
                #   # @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                #   attr_writer :day_of_week

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param day_of_month [Integer]
                #   # @param day_of_week [String]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly

                  finalize!
                end

                # @example
                # ```ruby
                # case day_of_week
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

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account,
          #   counterparty: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty
          # }
          # ```
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

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Account::Data::Type
              # }
              # ```
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
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment::Relationships::Counterparty::Data::Type
              # }
              # ```
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
          end

          # @example
          # ```ruby
          # case type
          # in :recurringDebitAchPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_DEBIT_ACH_PAYMENT = :recurringDebitAchPayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_recurring_credit_book_payment => {
        #   attributes: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes,
        #   relationships: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships,
        #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   amount: Integer,
          #   description: String,
          #   schedule: union: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule,
          #   idempotency_key: String,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
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
            #   # @param amount [Integer]
            #   # @param description [String]
            #   # @param schedule [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule]
            #   # @param idempotency_key [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param transaction_summary_override [String]
            #   #
            #   def initialize(amount:, description:, schedule:, idempotency_key: nil, tags: nil, transaction_summary_override: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # case schedule
            # in {interval: "Weekly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval, next_scheduled_action: Date, day_of_month: Integer}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule ...
            # in {interval: "Monthly", interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval, day_of_month: Integer, day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek}
            #   # Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule ...
            # end
            # ```
            #
            # @example
            # ```ruby
            # case schedule
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

              # @example
              # ```ruby
              # weekly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::WeeklySchedule::Interval,
              #   next_scheduled_action: Date,
              #   day_of_month: Integer,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
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

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param next_scheduled_action [String]
                #   # @param day_of_month [Integer]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     next_scheduled_action:,
                #     day_of_month: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Weekly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  WEEKLY = :Weekly

                  finalize!
                end
              end

              # @example
              # ```ruby
              # monthly_schedule => {
              #   interval: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval,
              #   day_of_month: Integer,
              #   day_of_week: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek,
              #   end_time: Date,
              #   start_time: Date
              # }
              # ```
              class MonthlySchedule < Unit::BaseModel
                # @!attribute interval
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval]
                required :interval,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::Interval
                         }

                # @!attribute [r] day_of_month
                #
                #   @return [Integer, nil]
                optional :day_of_month, Integer, api_name: :dayOfMonth

                # @!parse
                #   # @return [Integer]
                #   attr_writer :day_of_month

                # @!attribute [r] day_of_week
                #
                #   @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek, nil]
                optional :day_of_week,
                         enum: -> {
                           Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek
                         },
                         api_name: :dayOfWeek

                # @!parse
                #   # @return [Symbol, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Attributes::Schedule::MonthlySchedule::DayOfWeek]
                #   attr_writer :day_of_week

                # @!attribute [r] end_time
                #
                #   @return [Date, nil]
                optional :end_time, Date, api_name: :endTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :end_time

                # @!attribute [r] start_time
                #
                #   @return [Date, nil]
                optional :start_time, Date, api_name: :startTime

                # @!parse
                #   # @return [Date]
                #   attr_writer :start_time

                # @!attribute [r] total_number_of_payments
                #
                #   @return [Integer, nil]
                optional :total_number_of_payments, Integer, api_name: :totalNumberOfPayments

                # @!parse
                #   # @return [Integer]
                #   attr_writer :total_number_of_payments

                # @!parse
                #   # @param day_of_month [Integer]
                #   # @param day_of_week [String]
                #   # @param end_time [String]
                #   # @param start_time [String]
                #   # @param total_number_of_payments [Integer]
                #   # @param interval [String]
                #   #
                #   def initialize(
                #     day_of_month: nil,
                #     day_of_week: nil,
                #     end_time: nil,
                #     start_time: nil,
                #     total_number_of_payments: nil,
                #     interval:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case interval
                # in :Monthly
                #   # ...
                # end
                # ```
                class Interval < Unit::Enum
                  MONTHLY = :Monthly

                  finalize!
                end

                # @example
                # ```ruby
                # case day_of_week
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

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # relationships => {
          #   account: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account,
          #   counterparty_account: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount
          # }
          # ```
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

            # @example
            # ```ruby
            # account => {
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::Account::Data::Type
              # }
              # ```
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
            #   data: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment::Relationships::CounterpartyAccount::Data::Type
              # }
              # ```
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
          end

          # @example
          # ```ruby
          # case type
          # in :recurringCreditBookPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            RECURRING_CREDIT_BOOK_PAYMENT = :recurringCreditBookPayment

            finalize!
          end
        end
      end
    end
  end
end
