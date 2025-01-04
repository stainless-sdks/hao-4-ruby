# frozen_string_literal: true

module Unit
  module Models
    class RewardListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::RewardListParams::Filter]
      optional :filter, -> { Unit::Models::RewardListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RewardListParams::Page]
      optional :page, -> { Unit::Models::RewardListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::RewardListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::RewardListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute card_id
        #
        #   @return [String]
        optional :card_id, String, api_name: :cardId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute receiving_account_id
        #
        #   @return [String]
        optional :receiving_account_id, String, api_name: :receivingAccountId

        # @!attribute rewarded_transaction_id
        #
        #   @return [String]
        optional :rewarded_transaction_id, String, api_name: :rewardedTransactionId

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [String]
        optional :status, String

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!attribute transaction_id
        #
        #   @return [String]
        optional :transaction_id, String, api_name: :transactionId

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param card_id [String]
        #   # @param customer_id [String]
        #   # @param receiving_account_id [String]
        #   # @param rewarded_transaction_id [String]
        #   # @param since [String]
        #   # @param status [String]
        #   # @param tags [Hash{Symbol => String}]
        #   # @param transaction_id [String]
        #   # @param until_ [String]
        #   #
        #   def initialize(
        #     card_id: nil,
        #     customer_id: nil,
        #     receiving_account_id: nil,
        #     rewarded_transaction_id: nil,
        #     since: nil,
        #     status: nil,
        #     tags: nil,
        #     transaction_id: nil,
        #     until_: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void
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
