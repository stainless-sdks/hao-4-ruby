# frozen_string_literal: true

module Unit
  module Models
    class AccountEndOfDayListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::AccountEndOfDayListParams::Filter, nil]
      optional :filter, -> { Unit::Models::AccountEndOfDayListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::AccountEndOfDayListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AccountEndOfDayListParams::Page, nil]
      optional :page, -> { Unit::Models::AccountEndOfDayListParams::Page }

      # @!parse
      #   # @return [Unit::Models::AccountEndOfDayListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::AccountEndOfDayListParams::Filter]
      #   # @param page [Unit::Models::AccountEndOfDayListParams::Page]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, page: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   since: Date,
      #   until_: Date
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

        # @!attribute [r] since
        #
        #   @return [Date, nil]
        optional :since, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :since

        # @!attribute [r] until_
        #
        #   @return [Date, nil]
        optional :until_, Date, api_name: :until

        # @!parse
        #   # @return [Date]
        #   attr_writer :until_

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param since [String]
        #   # @param until_ [String]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, since: nil, until_: nil, **) = super

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
