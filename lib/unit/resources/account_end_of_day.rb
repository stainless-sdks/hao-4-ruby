# frozen_string_literal: true

module Unit
  module Resources
    class AccountEndOfDay
      # Get Account Balance History List from API
      #
      # @param params [Unit::Models::AccountEndOfDayListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountEndOfDayListParams::Filter] :filter
      #
      #   @option params [Unit::Models::AccountEndOfDayListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountEndOfDayListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::AccountEndOfDayListParams.dump(params)
        req = {
          method: :get,
          path: "account-end-of-day",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountEndOfDayListResponse
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
