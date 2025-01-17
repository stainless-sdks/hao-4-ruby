# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AuthorizationRequestListParams::Filter]
      optional :filter, -> { Unit::Models::AuthorizationRequestListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AuthorizationRequestListParams::Page]
      optional :page, -> { Unit::Models::AuthorizationRequestListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::AuthorizationRequestListParams::Filter]
      #   #
      #   # @param page [Unit::Models::AuthorizationRequestListParams::Page] Parameters for paginated list requests
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
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute merchant_category_code
        #
        #   @return [Array<String>]
        optional :merchant_category_code, Unit::ArrayOf[String], api_name: :merchantCategoryCode

        # @!attribute to_amount
        #
        #   @return [Integer]
        optional :to_amount, Integer, api_name: :toAmount

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
