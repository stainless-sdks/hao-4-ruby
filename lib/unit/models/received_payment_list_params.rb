# frozen_string_literal: true

module Unit
  module Models
    class ReceivedPaymentListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::ReceivedPaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::ReceivedPaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::ReceivedPaymentListParams::Filter]
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
      #   @return [Unit::Models::ReceivedPaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::ReceivedPaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::ReceivedPaymentListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::ReceivedPaymentListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::ReceivedPaymentListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   can_be_reprocessed: Unit::BooleanModel,
      #   customer_id: String,
      #   from_amount: Integer,
      #   include_completed: Unit::BooleanModel,
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

        # @!attribute [r] can_be_reprocessed
        #
        #   @return [Boolean, nil]
        optional :can_be_reprocessed, Unit::BooleanModel, api_name: :canBeReprocessed

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :can_be_reprocessed

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

        # @!attribute [r] include_completed
        #
        #   @return [Boolean, nil]
        optional :include_completed, Unit::BooleanModel, api_name: :includeCompleted

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_completed

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::ReceivedPaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::ReceivedPaymentListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::ReceivedPaymentListParams::Filter::Status>]
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
        #   # @param can_be_reprocessed [Boolean]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param include_completed [Boolean]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   # @param to_amount [Integer]
        #   # @param until_ [String]
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
        # ```ruby
        # case status
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
