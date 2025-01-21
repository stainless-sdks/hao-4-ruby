# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::RecurringPaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::RecurringPaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::RecurringPaymentListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RecurringPaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::RecurringPaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::RecurringPaymentListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::RecurringPaymentListParams::Filter]
      #   #
      #   # @param page [Unit::Models::RecurringPaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   from_end_time: String,
      #   from_start_time: String,
      #   status: -> { Unit::ArrayOf[String] === _1 },
      #   **_
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] account_id
        #
        #   @return [String, nil]
        optional :account_id, String, api_name: :accountId

        # @!parse
        #   # @return [String]
        #   attr_writer :account_id

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] from_end_time
        #
        #   @return [String, nil]
        optional :from_end_time, String, api_name: :fromEndTime

        # @!parse
        #   # @return [String]
        #   attr_writer :from_end_time

        # @!attribute [r] from_start_time
        #
        #   @return [String, nil]
        optional :from_start_time, String, api_name: :fromStartTime

        # @!parse
        #   # @return [String]
        #   attr_writer :from_start_time

        # @!attribute [r] status
        #
        #   @return [Array<String>]
        optional :status, Unit::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :status

        # @!attribute [r] to_end_time
        #
        #   @return [String, nil]
        optional :to_end_time, String, api_name: :toEndTime

        # @!parse
        #   # @return [String]
        #   attr_writer :to_end_time

        # @!attribute [r] to_start_time
        #
        #   @return [String, nil]
        optional :to_start_time, String, api_name: :toStartTime

        # @!parse
        #   # @return [String]
        #   attr_writer :to_start_time

        # @!attribute [r] type
        #
        #   @return [Array<Symbol, Unit::Models::RecurringPaymentListParams::Filter::Type>]
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::RecurringPaymentListParams::Filter::Type] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::RecurringPaymentListParams::Filter::Type>]
        #   attr_writer :type

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param from_end_time [String]
        #   # @param from_start_time [String]
        #   # @param status [Array<String>]
        #   # @param to_end_time [String]
        #   # @param to_start_time [String]
        #   # @param type [Array<String>]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     customer_id: nil,
        #     from_end_time: nil,
        #     from_start_time: nil,
        #     status: nil,
        #     to_end_time: nil,
        #     to_start_time: nil,
        #     type: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :recurringCreditAchPayment
        #   # ...
        # in :recurringDebitAchPayment
        #   # ...
        # in :recurringCreditBookPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          RECURRING_CREDIT_ACH_PAYMENT = :recurringCreditAchPayment
          RECURRING_DEBIT_ACH_PAYMENT = :recurringDebitAchPayment
          RECURRING_CREDIT_BOOK_PAYMENT = :recurringCreditBookPayment

          finalize!
        end
      end

      # @example
      # ```ruby
      # page => {
      #   limit: Integer,
      #   offset: Integer
      # }
      # ```
      class Page < Unit::BaseModel
        # @!attribute [r] limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] offset
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :offset

        # @!parse
        #   # Parameters for paginated list requests
        #   #
        #   # @param limit [Integer]
        #   # @param offset [Integer]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
