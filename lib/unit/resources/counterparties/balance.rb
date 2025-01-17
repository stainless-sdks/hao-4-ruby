# frozen_string_literal: true

module Unit
  module Resources
    class Counterparties
      class Balance
        # Get Recurring Payment from API
        #
        # @param counterparty_id [String] ID of the counterparty to get
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Counterparties::BalanceRetrieveResponse]
        #
        def retrieve(counterparty_id, opts = {})
          req = {
            method: :get,
            path: ["counterparties/%0s/balance", counterparty_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Counterparties::BalanceRetrieveResponse
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
end
