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
      #   # @param filter [Unit::Models::AuthorizationListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::AuthorizationListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

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
        #   # @param account_id [String, nil]
        #   # @param account_type [String, nil]
        #   # @param card_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param from_amount [Integer, nil]
        #   # @param include_non_authorized [Boolean, nil]
        #   # @param merchant_category_code [Array<String>, nil]
        #   # @param since [String, nil]
        #   # @param status [Array<String>, nil]
        #   # @param to_amount [Integer, nil]
        #   # @param until_ [String, nil]
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
        # case enum
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
