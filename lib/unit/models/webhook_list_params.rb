# frozen_string_literal: true

module Unit
  module Models
    class WebhookListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::WebhookListParams::Filter, nil]
      optional :filter, -> { Unit::Models::WebhookListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::WebhookListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::WebhookListParams::Page, nil]
      optional :page, -> { Unit::Models::WebhookListParams::Page }

      # @!parse
      #   # @return [Unit::Models::WebhookListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::WebhookListParams::Filter]
      #   #
      #   # @param page [Unit::Models::WebhookListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   from_id: Integer,
      #   since: String,
      #   to_id: Integer,
      #   until_: String
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] from_id
        #
        #   @return [Integer, nil]
        optional :from_id, Integer, api_name: :fromId

        # @!parse
        #   # @return [Integer]
        #   attr_writer :from_id

        # @!attribute [r] since
        #
        #   @return [String, nil]
        optional :since, String

        # @!parse
        #   # @return [String]
        #   attr_writer :since

        # @!attribute [r] to_id
        #
        #   @return [Integer, nil]
        optional :to_id, Integer, api_name: :toId

        # @!parse
        #   # @return [Integer]
        #   attr_writer :to_id

        # @!attribute [r] until_
        #
        #   @return [String, nil]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @return [String]
        #   attr_writer :until_

        # @!parse
        #   # @param from_id [Integer]
        #   # @param since [String]
        #   # @param to_id [Integer]
        #   # @param until_ [String]
        #   #
        #   def initialize(from_id: nil, since: nil, to_id: nil, until_: nil, **) = super

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
