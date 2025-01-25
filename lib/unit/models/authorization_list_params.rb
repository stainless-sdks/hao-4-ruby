# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::AuthorizationListParams::Filter, nil]
      optional :filter, -> { Unit::Models::AuthorizationListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::AuthorizationListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AuthorizationListParams::Page, nil]
      optional :page, -> { Unit::Models::AuthorizationListParams::Page }

      # @!parse
      #   # @return [Unit::Models::AuthorizationListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::AuthorizationListParams::Filter]
      #   # @param page [Unit::Models::AuthorizationListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   account_type: String,
      #   card_id: String,
      #   customer_id: String,
      #   from_amount: Integer,
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

        # @!attribute [r] from_amount
        #
        #   @return [Integer, nil]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!parse
        #   # @return [Integer]
        #   attr_writer :from_amount

        # @!attribute [r] include_non_authorized
        #
        #   @return [Boolean, nil]
        optional :include_non_authorized, Unit::BooleanModel, api_name: :includeNonAuthorized

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_non_authorized

        # @!attribute [r] merchant_category_code
        #
        #   @return [Array<String>]
        optional :merchant_category_code, Unit::ArrayOf[String], api_name: :merchantCategoryCode

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :merchant_category_code

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::AuthorizationListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::AuthorizationListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::AuthorizationListParams::Filter::Status>]
        #   attr_writer :status

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
        #   # @param account_type [String]
        #   # @param card_id [String]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param include_non_authorized [Boolean]
        #   # @param merchant_category_code [Array<String>]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param to_amount [Integer]
        #   # @param until_ [String]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     account_type: nil,
        #     card_id: nil,
        #     customer_id: nil,
        #     from_amount: nil,
        #     include_non_authorized: nil,
        #     merchant_category_code: nil,
        #     since: nil,
        #     status: nil,
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
        # in :Authorized
        #   # ...
        # in :Completed
        #   # ...
        # in :Canceled
        #   # ...
        # in :Declined
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          AUTHORIZED = :Authorized
          COMPLETED = :Completed
          CANCELED = :Canceled
          DECLINED = :Declined

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
