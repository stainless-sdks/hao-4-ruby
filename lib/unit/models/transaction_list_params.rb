# frozen_string_literal: true

module Unit
  module Models
    class TransactionListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::TransactionListParams::Filter, nil]
      optional :filter, -> { Unit::Models::TransactionListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::TransactionListParams::Filter]
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
      #   @return [Unit::Models::TransactionListParams::Page, nil]
      optional :page, -> { Unit::Models::TransactionListParams::Page }

      # @!parse
      #   # @return [Unit::Models::TransactionListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::TransactionListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::TransactionListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   account_type: String,
      #   card_id: String,
      #   customer_id: String,
      #   direction: -> { Unit::ArrayOf[enum: Unit::Models::TransactionListParams::Filter::Direction] === _1 },
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

        # @!attribute [r] account_type
        #
        #   @return [String, nil]
        optional :account_type, String, api_name: :accountType

        # @!parse
        #   # @return [String]
        #   attr_writer :account_type

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

        # @!attribute [r] direction
        #
        #   @return [Array<Symbol, Unit::Models::TransactionListParams::Filter::Direction>]
        optional :direction,
                 -> {
                   Unit::ArrayOf[enum: Unit::Models::TransactionListParams::Filter::Direction]
                 }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::TransactionListParams::Filter::Direction>]
        #   attr_writer :direction

        # @!attribute [r] exclude_fees
        #
        #   @return [Boolean, nil]
        optional :exclude_fees, Unit::BooleanModel, api_name: :excludeFees

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :exclude_fees

        # @!attribute [r] from_amount
        #
        #   @return [Integer, nil]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :from_amount

        # @!attribute [r] query
        #
        #   @return [String, nil]
        optional :query, String

        # @!parse
        #   # @return [String]
        #   attr_writer :query

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

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
        #   @return [Array<String>]
        optional :type, Unit::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
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
        #   # @param account_type [String]
        #   # @param card_id [String]
        #   # @param customer_id [String]
        #   # @param direction [Array<String>]
        #   # @param exclude_fees [Boolean]
        #   # @param from_amount [Integer]
        #   # @param query [String]
        #   # @param since [String]
        #   # @param tags [Hash{Symbol=>String}]
        #   # @param to_amount [Integer]
        #   # @param type [Array<String>]
        #   # @param until_ [String]
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
