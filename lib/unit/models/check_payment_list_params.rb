# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::CheckPaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::CheckPaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::CheckPaymentListParams::Filter]
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
      #   @return [Unit::Models::CheckPaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::CheckPaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::CheckPaymentListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::CheckPaymentListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::CheckPaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   check_number: String,
      #   customer_id: String,
      #   from_amount: Integer,
      #   since: String,
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

        # @!attribute [r] check_number
        #
        #   @return [String, nil]
        optional :check_number, String, api_name: :checkNumber

        # @!parse
        #   # @return [String]
        #   attr_writer :check_number

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] from_amount
        #
        #   @return [Integer, nil]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :from_amount

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::CheckPaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::CheckPaymentListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::CheckPaymentListParams::Filter::Status>]
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

        # @!attribute [r] until_
        #
        #   @return [String, nil]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @return [String]
        #   attr_writer :until_

        # @!parse
        #   # @param account_id [String]
        #   # @param check_number [String]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   # @param to_amount [Integer]
        #   # @param until_ [String]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     check_number: nil,
        #     customer_id: nil,
        #     from_amount: nil,
        #     since: nil,
        #     status: nil,
        #     tags: nil,
        #     to_amount: nil,
        #     until_: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
        # in :New
        #   # ...
        # in :Pending
        #   # ...
        # in :Canceled
        #   # ...
        # in :Rejected
        #   # ...
        # in :InDelivery
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          NEW = :New
          PENDING = :Pending
          CANCELED = :Canceled
          REJECTED = :Rejected
          IN_DELIVERY = :InDelivery
          IN_PRODUCTION = :InProduction
          DELIVERED = :Delivered
          RETURNED_TO_SENDER = :ReturnedToSender
          PROCESSED = :Processed
          PENDING_REVIEW = :PendingReview
          MARKED_FOR_RETURN = :MarkedForReturn
          RETURNED = :Returned

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
