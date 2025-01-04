# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::CheckDepositListParams::Filter]
      optional :filter, -> { Unit::Models::CheckDepositListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CheckDepositListParams::Page]
      optional :page, -> { Unit::Models::CheckDepositListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::CheckDepositListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::CheckDepositListParams::Page] Parameters for paginated list requests
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

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::CheckDepositListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::CheckDepositListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol => String}]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, status: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :AwaitingImages
        #   # ...
        # in :AwaitingFrontImage
        #   # ...
        # in :AwaitingBackImage
        #   # ...
        # in :Pending
        #   # ...
        # in :PendingReview
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          AWAITING_IMAGES = :AwaitingImages
          AWAITING_FRONT_IMAGE = :AwaitingFrontImage
          AWAITING_BACK_IMAGE = :AwaitingBackImage
          PENDING = :Pending
          PENDING_REVIEW = :PendingReview
          REJECTED = :Rejected
          CLEARING = :Clearing
          SENT = :Sent
          CANCELED = :Canceled
          RETURNED = :Returned
          AWAITING_CUSTOMER_CONFIRMATION = :AwaitingCustomerConfirmation

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
