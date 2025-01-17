# frozen_string_literal: true

module Unit
  module Resources
    class AtmLocations
      # Get List ATM Locations from API
      #
      # @param params [Unit::Models::AtmLocationListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AtmLocationListParams::Filter] :filter
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Array<Unit::Models::AtmLocationListResponseItem>]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::AtmLocationListParams.dump(params)
        req = {
          method: :get,
          path: "atm-locations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::ArrayOf[Unit::Models::AtmLocationListResponseItem]
        }
        @client.request(req, opts)
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
