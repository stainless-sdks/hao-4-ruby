# frozen_string_literal: true

module Unit
  module Models
    class EventListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::EventListParams::Filter]
      optional :filter, -> { Unit::Models::EventListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::EventListParams::Page]
      optional :page, -> { Unit::Models::EventListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::EventListParams::Filter]
      #   #
      #   # @param page [Unit::Models::EventListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute type
        #
        #   @return [Array<String>]
        optional :type, Unit::ArrayOf[String]

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param since [String]
        #   # @param type [Array<String>]
        #   # @param until_ [String]
        #   #
        #   def initialize(since: nil, type: nil, until_: nil, **) = super

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
