# frozen_string_literal: true

module Unit
  module Resources
    class StoreLocations
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Get Cash Deposit Store Locations List By Coordinates from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::StoreLocationListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::StoreLocationListParams::Filter, nil] :filter
      #
      #   @option params [Unit::Models::StoreLocationListParams::Page, nil] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StoreLocationListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::StoreLocationListParams.dump(params)
        req = {
          method: :get,
          path: "store-locations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::StoreLocationListResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
