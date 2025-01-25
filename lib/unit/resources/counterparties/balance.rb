# frozen_string_literal: true

module Unit
  module Resources
    class Counterparties
      class Balance
        # Get Recurring Payment from API
        #
        # @param counterparty_id [String] ID of the counterparty to get
        #
        # @param params [Unit::Models::Counterparties::BalanceRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Counterparties::BalanceRetrieveResponse]
        #
        def retrieve(counterparty_id, params = {})
          @client.request(
            method: :get,
            path: ["counterparties/%0s/balance", counterparty_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Counterparties::BalanceRetrieveResponse,
            options: params[:request_options]
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
end
