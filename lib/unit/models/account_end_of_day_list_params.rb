# frozen_string_literal: true

module Unit
  module Models
    class AccountEndOfDayListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AccountEndOfDayListParams::Filter]
      optional :filter, -> { Unit::Models::AccountEndOfDayListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AccountEndOfDayListParams::Page]
      optional :page, -> { Unit::Models::AccountEndOfDayListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::AccountEndOfDayListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::AccountEndOfDayListParams::Page, nil] Parameters for paginated list requests
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

        # @!attribute since
        #
        #   @return [Date]
        optional :since, Date

        # @!attribute until_
        #
        #   @return [Date]
        optional :until_, Date, api_name: :until

        # @!parse
        #   # @param account_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param since [String, nil]
        #   # @param until_ [String, nil]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, since: nil, until_: nil, **) = super

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
