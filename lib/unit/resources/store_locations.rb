# frozen_string_literal: true

module Unit
  module Resources
    class StoreLocations
      # Get Cash Deposit Store Locations List By Coordinates from API
      #
      # @param params [Unit::Models::StoreLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::StoreLocationListParams::Filter] :filter
      #
      #   @option params [Unit::Models::StoreLocationListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StoreLocationListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::StoreLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "store-locations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::StoreLocationListResponse,
          options: options
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
