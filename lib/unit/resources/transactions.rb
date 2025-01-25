# frozen_string_literal: true

module Unit
  module Resources
    class Transactions
      # Get List Transactions from API
      #
      # @param params [Unit::Models::TransactionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::TransactionListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::TransactionListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::TransactionListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "transactions",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::TransactionListResponse,
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
