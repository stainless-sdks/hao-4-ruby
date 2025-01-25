# frozen_string_literal: true

module Unit
  module Resources
    class AccountEndOfDay
      # Get Account Balance History List from API
      #
      # @param params [Unit::Models::AccountEndOfDayListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AccountEndOfDayListParams::Filter] :filter
      #
      #   @option params [Unit::Models::AccountEndOfDayListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AccountEndOfDayListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::AccountEndOfDayListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "account-end-of-day",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountEndOfDayListResponse,
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
