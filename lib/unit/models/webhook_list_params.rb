# frozen_string_literal: true

module Unit
  module Models
    class WebhookListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::WebhookListParams::Filter]
      optional :filter, -> { Unit::Models::WebhookListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::WebhookListParams::Page]
      optional :page, -> { Unit::Models::WebhookListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::WebhookListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::WebhookListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute from_id
        #
        #   @return [Integer]
        optional :from_id, Integer, api_name: :fromId

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute to_id
        #
        #   @return [Integer]
        optional :to_id, Integer, api_name: :toId

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param from_id [Integer, nil]
        #   # @param since [String, nil]
        #   # @param to_id [Integer, nil]
        #   # @param until_ [String, nil]
        #   #
        #   def initialize(from_id: nil, since: nil, to_id: nil, until_: nil, **) = super

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
