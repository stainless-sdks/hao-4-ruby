# frozen_string_literal: true

module Unit
  module Resources
    class Returns
      # Return Received ACH Transaction via API
      #
      # @param transaction_id [String] ID of the transaction to return
      #
      # @param params [Unit::Models::ReturnReturnParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ReturnReturnParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReturnReturnResponse]
      #
      def return_(transaction_id, params = {}, opts = {})
        parsed = Unit::Models::ReturnReturnParams.dump(params)
        req = {
          method: :post,
          path: ["returns/%0s", transaction_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::ReturnReturnResponse
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
