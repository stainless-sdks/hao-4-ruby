# frozen_string_literal: true

module Unit
  module Models
    class DisputeListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::DisputeListParams::Filter]
      optional :filter, -> { Unit::Models::DisputeListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::DisputeListParams::Page]
      optional :page, -> { Unit::Models::DisputeListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::DisputeListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::DisputeListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute query
        #
        #   @return [String]
        optional :query, String

        # @!parse
        #   # @param query [String, nil]
        #   #
        #   def initialize(query: nil, **) = super

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
