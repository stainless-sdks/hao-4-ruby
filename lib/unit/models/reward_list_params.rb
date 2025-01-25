# frozen_string_literal: true

module Unit
  module Models
    class RewardListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::RewardListParams::Filter, nil]
      optional :filter, -> { Unit::Models::RewardListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::RewardListParams::Filter]
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
      #   @return [Unit::Models::RewardListParams::Page, nil]
      optional :page, -> { Unit::Models::RewardListParams::Page }

      # @!parse
      #   # @return [Unit::Models::RewardListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::RewardListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::RewardListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   card_id: String,
      #   customer_id: String,
      #   receiving_account_id: String,
      #   rewarded_transaction_id: String,
      #   since: String,
      #   **_
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] card_id
        #
        #   @return [String, nil]
        optional :card_id, String, api_name: :cardId

        # @!parse
        #   # @return [String]
        #   attr_writer :card_id

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] receiving_account_id
        #
        #   @return [String, nil]
        optional :receiving_account_id, String, api_name: :receivingAccountId

        # @!parse
        #   # @return [String]
        #   attr_writer :receiving_account_id

        # @!attribute [r] rewarded_transaction_id
        #
        #   @return [String, nil]
        optional :rewarded_transaction_id, String, api_name: :rewardedTransactionId

        # @!parse
        #   # @return [String]
        #   attr_writer :rewarded_transaction_id

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] status
        #
        #   @return [String, nil]
        optional :status, String

        # @!parse
        #   # @return [String]
        #   attr_writer :status

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!attribute [r] transaction_id
        #
        #   @return [String, nil]
        optional :transaction_id, String, api_name: :transactionId

        # @!parse
        #   # @return [String]
        #   attr_writer :transaction_id

        # @!attribute [r] until_
        #
        #   @return [String, nil]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @return [String]
        #   attr_writer :until_

        # @!parse
        #   # @param card_id [String]
        #   # @param customer_id [String]
        #   # @param receiving_account_id [String]
        #   # @param rewarded_transaction_id [String]
        #   # @param since [String]
        #   # @param status [String]
        #   # @param tags [Hash{Symbol=>String}]
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
