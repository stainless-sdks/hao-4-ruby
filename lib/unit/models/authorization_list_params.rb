# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AuthorizationListParams::Filter]
      optional :filter, -> { Unit::Models::AuthorizationListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AuthorizationListParams::Page]
      optional :page, -> { Unit::Models::AuthorizationListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::AuthorizationListParams::Filter]
      #   #
      #   # @param page [Unit::Models::AuthorizationListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
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

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute include_non_authorized
        #
        #   @return [Boolean]
        optional :include_non_authorized, Unit::BooleanModel, api_name: :includeNonAuthorized

        # @!attribute merchant_category_code
        #
        #   @return [Array<String>]
        optional :merchant_category_code, Unit::ArrayOf[String], api_name: :merchantCategoryCode

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::AuthorizationListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::AuthorizationListParams::Filter::Status }]

        # @!attribute to_amount
        #
        #   @return [Integer]
        optional :to_amount, Integer, api_name: :toAmount

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

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
        #
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
