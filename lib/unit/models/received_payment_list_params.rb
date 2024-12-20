# frozen_string_literal: true

module Unit
  module Models
    class ReceivedPaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::ReceivedPaymentListParams::Filter]
      optional :filter, -> { Unit::Models::ReceivedPaymentListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::ReceivedPaymentListParams::Page]
      optional :page, -> { Unit::Models::ReceivedPaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::ReceivedPaymentListParams::Filter, nil]
      #   #
      #   # @param include [String, nil]
      #   #
      #   # @param page [Unit::Models::ReceivedPaymentListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute can_be_reprocessed
        #
        #   @return [Boolean]
        optional :can_be_reprocessed, Unit::BooleanModel, api_name: :canBeReprocessed

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute include_completed
        #
        #   @return [Boolean]
        optional :include_completed, Unit::BooleanModel, api_name: :includeCompleted

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::ReceivedPaymentListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::ReceivedPaymentListParams::Filter::Status }]

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
        #   # @param account_id [String, nil]
        #   # @param can_be_reprocessed [Boolean, nil]
        #   # @param customer_id [String, nil]
        #   # @param from_amount [Integer, nil]
        #   # @param include_completed [Boolean, nil]
        #   # @param since [String, nil]
        #   # @param status [Array<String>, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   # @param to_amount [Integer, nil]
        #   # @param until_ [String, nil]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     can_be_reprocessed: nil,
        #     customer_id: nil,
        #     from_amount: nil,
        #     include_completed: nil,
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
        # in :Pending
        #   # ...
        # in :Advanced
        #   # ...
        # in :PendingReview
        #   # ...
        # in :MarkedForReturn
        #   # ...
        # in :Returned
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          PENDING = :Pending
          ADVANCED = :Advanced
          PENDING_REVIEW = :PendingReview
          MARKED_FOR_RETURN = :MarkedForReturn
          RETURNED = :Returned
          COMPLETED = :Completed

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
        #   # @param limit [Integer, nil]
        #   # @param offset [Integer, nil]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
