# frozen_string_literal: true

module Unit
  module Resources
    class AtmLocations
      # Get List ATM Locations from API
      #
      # @param params [Unit::Models::AtmLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AtmLocationListParams::Filter] :filter
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Array<Unit::Models::AtmLocationListResponseItem>]
      #
      def list(params = {})
        parsed, options = Unit::Models::AtmLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "atm-locations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::ArrayOf[Unit::Models::AtmLocationListResponseItem],
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
