# frozen_string_literal: true

module Unit
  module Models
    class EventListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::EventListParams::Filter, nil]
      optional :filter, -> { Unit::Models::EventListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::EventListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::EventListParams::Page, nil]
      optional :page, -> { Unit::Models::EventListParams::Page }

      # @!parse
      #   # @return [Unit::Models::EventListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::EventListParams::Filter]
      #   #
      #   # @param page [Unit::Models::EventListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   since: String,
      #   type: -> { Unit::ArrayOf[String] === _1 },
      #   until_: String
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] type
        #
        #   @return [Array<String>]
        optional :type, Unit::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :type

        # @!attribute [r] until_
        #
        #   @return [String, nil]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @return [String]
        #   attr_writer :until_

        # @!parse
        #   # @param since [String]
        #   # @param type [Array<String>]
        #   # @param until_ [String]
        #   #
        #   def initialize(since: nil, type: nil, until_: nil, **) = super

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
