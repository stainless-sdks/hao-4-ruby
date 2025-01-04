# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::CheckPaymentListParams::Filter]
      optional :filter, -> { Unit::Models::CheckPaymentListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CheckPaymentListParams::Page]
      optional :page, -> { Unit::Models::CheckPaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

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

      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute check_number
        #
        #   @return [String]
        optional :check_number, String, api_name: :checkNumber

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::CheckPaymentListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::CheckPaymentListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!attribute to_amount
        #
        #   @return [Integer]
        optional :to_amount, Integer, api_name: :toAmount

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param account_id [String]
        #   # @param check_number [String]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol => String}]
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
        #
        # ```ruby
        # case enum
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
