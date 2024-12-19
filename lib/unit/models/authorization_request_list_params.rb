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
      #   # @param filter [Unit::Models::AuthorizationRequestListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::AuthorizationRequestListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

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
        #   # @param account_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param from_amount [Integer, nil]
        #   # @param merchant_category_code [Array<String>, nil]
        #   # @param to_amount [Integer, nil]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, from_amount: nil, merchant_category_code: nil, to_amount: nil, **) = super

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
        #   # @param limit [Integer, nil]
        #   # @param offset [Integer, nil]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
