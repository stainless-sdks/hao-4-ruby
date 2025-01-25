# frozen_string_literal: true

module Unit
  module Resources
    class Returns
      # Return Received ACH Transaction via API
      #
      # @param transaction_id [String] ID of the transaction to return
      #
      # @param params [Unit::Models::ReturnReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ReturnReturnParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReturnReturnResponse]
      #
      def return_(transaction_id, params)
        parsed, options = Unit::Models::ReturnReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["returns/%0s", transaction_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::ReturnReturnResponse,
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
