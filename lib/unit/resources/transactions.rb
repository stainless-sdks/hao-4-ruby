# frozen_string_literal: true

module Unit
  module Resources
    class Transactions
      # Get List Transactions from API
      #
      # @param params [Unit::Models::TransactionListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::TransactionListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::TransactionListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::TransactionListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::TransactionListParams.dump(params)
        req = {
          method: :get,
          path: "transactions",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::TransactionListResponse
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
