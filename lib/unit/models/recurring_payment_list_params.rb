# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::RecurringPaymentListParams::Filter]
      optional :filter, -> { Unit::Models::RecurringPaymentListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RecurringPaymentListParams::Page]
      optional :page, -> { Unit::Models::RecurringPaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::RecurringPaymentListParams::Filter]
      #   #
      #   # @param page [Unit::Models::RecurringPaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_end_time
        #
        #   @return [String]
        optional :from_end_time, String, api_name: :fromEndTime

        # @!attribute from_start_time
        #
        #   @return [String]
        optional :from_start_time, String, api_name: :fromStartTime

        # @!attribute status
        #
        #   @return [Array<String>]
        optional :status, Unit::ArrayOf[String]

        # @!attribute to_end_time
        #
        #   @return [String]
        optional :to_end_time, String, api_name: :toEndTime

        # @!attribute to_start_time
        #
        #   @return [String]
        optional :to_start_time, String, api_name: :toStartTime

        # @!attribute type
        #
        #   @return [Array<Symbol, Unit::Models::RecurringPaymentListParams::Filter::Type>]
        optional :type, Unit::ArrayOf[enum: -> { Unit::Models::RecurringPaymentListParams::Filter::Type }]

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
        #
        # ```ruby
        # case enum
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

      class Page < Unit::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        optional :offset, Integer

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
