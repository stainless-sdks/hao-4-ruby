# frozen_string_literal: true

module Unit
  module Models
    class CardListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::CardListParams::Filter]
      optional :filter, -> { Unit::Models::CardListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CardListParams::Page]
      optional :page, -> { Unit::Models::CardListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::CardListParams::Filter, nil]
      #   #
      #   # @param include [String, nil]
      #   #
      #   # @param page [Unit::Models::CardListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, sort: nil, **) = super

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

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::CardListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::CardListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param account_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param status [Array<String>, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, status: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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