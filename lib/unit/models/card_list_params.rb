# frozen_string_literal: true

module Unit
  module Models
    class CardListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::CardListParams::Filter, nil]
      optional :filter, -> { Unit::Models::CardListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::CardListParams::Filter]
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
      #   @return [Unit::Models::CardListParams::Page, nil]
      optional :page, -> { Unit::Models::CardListParams::Page }

      # @!parse
      #   # @return [Unit::Models::CardListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::CardListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::CardListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::CardListParams::Filter::Status] === _1 },
      #   tags: -> { Unit::HashOf[String] === _1 }
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

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::CardListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::CardListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::CardListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, status: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
        # in :Inactive
        #   # ...
        # in :Active
        #   # ...
        # in :Stolen
        #   # ...
        # in :Lost
        #   # ...
        # in :Frozen
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          INACTIVE = :Inactive
          ACTIVE = :Active
          STOLEN = :Stolen
          LOST = :Lost
          FROZEN = :Frozen
          CLOSED_BY_CUSTOMER = :ClosedByCustomer
          SUSPECTED_FRAUD = :SuspectedFraud

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
