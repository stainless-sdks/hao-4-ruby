# frozen_string_literal: true

module Unit
  module Models
    class PaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::PaymentListParams::Filter]
      optional :filter, -> { Unit::Models::PaymentListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::PaymentListParams::Page]
      optional :page, -> { Unit::Models::PaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::PaymentListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::PaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # filter => {
      #   account_id: String,
      #   counterparty_account_id: String,
      #   customer_id: String,
      #   direction: -> { Unit::ArrayOf[Unit::Models::PaymentListParams::Filter::Direction] === _1 },
      #   feature: -> { Unit::ArrayOf[Unit::Models::PaymentListParams::Filter::Feature] === _1 },
      #   **_
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute counterparty_account_id
        #
        #   @return [String]
        optional :counterparty_account_id, String, api_name: :counterpartyAccountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute direction
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Direction>]
        optional :direction, Unit::ArrayOf[enum: -> { Unit::Models::PaymentListParams::Filter::Direction }]

        # @!attribute feature
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Feature>]
        optional :feature, Unit::ArrayOf[enum: -> { Unit::Models::PaymentListParams::Filter::Feature }]

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute recurring_payment_id
        #
        #   @return [Integer]
        optional :recurring_payment_id, Integer, api_name: :recurringPaymentId

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::PaymentListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!attribute to_amount
        #
        #   @return [Integer]
        optional :to_amount, Integer, api_name: :toAmount

        # @!attribute type
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Type>]
        optional :type, Unit::ArrayOf[enum: -> { Unit::Models::PaymentListParams::Filter::Type }]

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param account_id [String]
        #   # @param counterparty_account_id [String]
        #   # @param customer_id [String]
        #   # @param direction [Array<String>]
        #   # @param feature [Array<String>]
        #   # @param from_amount [Integer]
        #   # @param recurring_payment_id [Integer]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol => String}]
        #   # @param to_amount [Integer]
        #   # @param type [Array<String>]
        #   # @param until_ [String]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     counterparty_account_id: nil,
        #     customer_id: nil,
        #     direction: nil,
        #     feature: nil,
        #     from_amount: nil,
        #     recurring_payment_id: nil,
        #     since: nil,
        #     status: nil,
        #     tags: nil,
        #     to_amount: nil,
        #     type: nil,
        #     until_: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case direction
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
        # case feature
        # in :SameDay
        #   # ...
        # in :RecurringPayment
        #   # ...
        # end
        # ```
        class Feature < Unit::Enum
          SAME_DAY = :SameDay
          RECURRING_PAYMENT = :RecurringPayment

          finalize!
        end

        # @example
        #
        # ```ruby
        # case status
        # in :Rejected
        #   # ...
        # in :Pending
        #   # ...
        # in :Canceled
        #   # ...
        # in :"Pending Review"
        #   # ...
        # in :Clearing
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          REJECTED = :Rejected
          PENDING = :Pending
          CANCELED = :Canceled
          PENDING_REVIEW = :"Pending Review"
          CLEARING = :Clearing
          SENT = :Sent
          RETURNED = :Returned

          finalize!
        end

        # @example
        #
        # ```ruby
        # case type
        # in :AchPayment
        #   # ...
        # in :BookPayment
        #   # ...
        # in :WirePayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_PAYMENT = :AchPayment
          BOOK_PAYMENT = :BookPayment
          WIRE_PAYMENT = :WirePayment

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # page => {
      #   limit: Integer,
      #   offset: Integer
      # }
      # ```
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
