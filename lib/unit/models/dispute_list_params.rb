# frozen_string_literal: true

module Unit
  module Models
    class DisputeListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::DisputeListParams::Filter, nil]
      optional :filter, -> { Unit::Models::DisputeListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::DisputeListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::DisputeListParams::Page, nil]
      optional :page, -> { Unit::Models::DisputeListParams::Page }

      # @!parse
      #   # @return [Unit::Models::DisputeListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::DisputeListParams::Filter]
      #   #
      #   # @param page [Unit::Models::DisputeListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   query: String
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] query
        #
        #   @return [String, nil]
        optional :query, String

        # @!parse
        #   # @return [String]
        #   attr_writer :query

        # @!parse
        #   # @param query [String]
        #   #
        #   def initialize(query: nil, **) = super

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
