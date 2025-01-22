# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::AuthorizationRequestListParams::Filter, nil]
      optional :filter, -> { Unit::Models::AuthorizationRequestListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::AuthorizationRequestListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AuthorizationRequestListParams::Page, nil]
      optional :page, -> { Unit::Models::AuthorizationRequestListParams::Page }

      # @!parse
      #   # @return [Unit::Models::AuthorizationRequestListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::AuthorizationRequestListParams::Filter]
      #   # @param page [Unit::Models::AuthorizationRequestListParams::Page]
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   from_amount: Integer,
      #   merchant_category_code: -> { Unit::ArrayOf[String] === _1 },
      #   to_amount: Integer
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

        # @!attribute [r] merchant_category_code
        #
        #   @return [Array<String>]
        optional :merchant_category_code, Unit::ArrayOf[String], api_name: :merchantCategoryCode

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :merchant_category_code

        # @!attribute [r] to_amount
        #
        #   @return [Integer, nil]
        optional :to_amount, Integer, api_name: :toAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :to_amount

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param merchant_category_code [Array<String>]
        #   # @param to_amount [Integer]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, from_amount: nil, merchant_category_code: nil, to_amount: nil, **) = super

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
