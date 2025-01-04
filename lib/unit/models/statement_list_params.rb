# frozen_string_literal: true

module Unit
  module Models
    class StatementListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::StatementListParams::Filter]
      optional :filter, -> { Unit::Models::StatementListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::StatementListParams::Page]
      optional :page, -> { Unit::Models::StatementListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::StatementListParams::Filter]
      #   #
      #   # @param page [Unit::Models::StatementListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

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

        # @!attribute period
        #
        #   @return [String]
        optional :period, String

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param period [String]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, period: nil, **) = super

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
        #   # @param limit [Integer]
        #   # @param offset [Integer]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
