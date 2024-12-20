# frozen_string_literal: true

module Unit
  module Models
    class TransactionListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::TransactionListParams::Filter]
      optional :filter, -> { Unit::Models::TransactionListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::TransactionListParams::Page]
      optional :page, -> { Unit::Models::TransactionListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::TransactionListParams::Filter, nil]
      #   #
      #   # @param include [String, nil]
      #   #
      #   # @param page [Unit::Models::TransactionListParams::Page, nil] Parameters for paginated list requests
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

        # @!attribute account_type
        #
        #   @return [String]
        optional :account_type, String, api_name: :accountType

        # @!attribute card_id
        #
        #   @return [String]
        optional :card_id, String, api_name: :cardId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute direction
        #
        #   @return [Array<Symbol, Unit::Models::TransactionListParams::Filter::Direction>]
        optional :direction,
                 Unit::ArrayOf[enum: -> {
                   Unit::Models::TransactionListParams::Filter::Direction
                 }]

        # @!attribute exclude_fees
        #
        #   @return [Boolean]
        optional :exclude_fees, Unit::BooleanModel, api_name: :excludeFees

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute query
        #
        #   @return [String]
        optional :query, String

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

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
        #   @return [Array<String>]
        optional :type, Unit::ArrayOf[String]

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param account_id [String, nil]
        #   # @param account_type [String, nil]
        #   # @param card_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param direction [Array<String>, nil]
        #   # @param exclude_fees [Boolean, nil]
        #   # @param from_amount [Integer, nil]
        #   # @param query [String, nil]
        #   # @param since [String, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   # @param to_amount [Integer, nil]
        #   # @param type [Array<String>, nil]
        #   # @param until_ [String, nil]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     account_type: nil,
        #     card_id: nil,
        #     customer_id: nil,
        #     direction: nil,
        #     exclude_fees: nil,
        #     from_amount: nil,
        #     query: nil,
        #     since: nil,
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
        # case enum
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
