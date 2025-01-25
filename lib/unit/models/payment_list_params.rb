# frozen_string_literal: true

module Unit
  module Models
    class PaymentListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::PaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::PaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::PaymentListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] include
      #
      #   @return [String, nil]
      optional :include, String

      # @!parse
      #   # @return [String]
      #   attr_writer :include

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::PaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::PaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::PaymentListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::PaymentListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::PaymentListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   counterparty_account_id: String,
      #   customer_id: String,
      #   direction: -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Direction] === _1 },
      #   feature: -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Feature] === _1 },
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

        # @!attribute [r] counterparty_account_id
        #
        #   @return [String, nil]
        optional :counterparty_account_id, String, api_name: :counterpartyAccountId

        # @!parse
        #   # @return [String]
        #   attr_writer :counterparty_account_id

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] direction
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Direction>]
        optional :direction, -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Direction] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Direction>]
        #   attr_writer :direction

        # @!attribute [r] feature
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Feature>]
        optional :feature, -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Feature] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Feature>]
        #   attr_writer :feature

        # @!attribute [r] from_amount
        #
        #   @return [Integer, nil]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :from_amount

        # @!attribute [r] recurring_payment_id
        #
        #   @return [Integer, nil]
        optional :recurring_payment_id, Integer, api_name: :recurringPaymentId

        # @!parse
        #   # @return [Integer]
        #   attr_writer :recurring_payment_id

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!attribute [r] to_amount
        #
        #   @return [Integer, nil]
        optional :to_amount, Integer, api_name: :toAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :to_amount

        # @!attribute [r] type
        #
        #   @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Type>]
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::PaymentListParams::Filter::Type] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::PaymentListParams::Filter::Type>]
        #   attr_writer :type

        # @!attribute [r] until_
        #
        #   @return [String, nil]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @return [String]
        #   attr_writer :until_

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
        #   # @param tags [Hash{Symbol=>String}]
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
