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
      #   # @param filter [Unit::Models::TransactionListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::TransactionListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
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
                 -> {
                   Unit::ArrayOf[enum: Unit::Models::TransactionListParams::Filter::Direction]
                 }

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
        #   # @param account_id [String]
        #   # @param account_type [String]
        #   # @param card_id [String]
        #   # @param customer_id [String]
        #   # @param direction [Array<String>]
        #   # @param exclude_fees [Boolean]
        #   # @param from_amount [Integer]
        #   # @param query [String]
        #   # @param since [String]
        #   # @param tags [Hash{Symbol => String}]
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
        #
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
      #
      # ```ruby
      # page => {
      #   limit: Integer,
      #   offset: Integer
      # }
      # ```
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
