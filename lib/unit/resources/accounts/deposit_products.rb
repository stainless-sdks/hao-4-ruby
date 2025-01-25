# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class DepositProducts
        # Retrieve the list of available deposit products compatible to the account.
        #
        # @param account_id [String] ID of the account to get deposit products for
        #
        # @param params [Unit::Models::Accounts::DepositProductListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Accounts::DepositProductListResponse]
        #
        def list(account_id, params = {})
          @client.request(
            method: :get,
            path: ["accounts/%0s/deposit-products", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::DepositProductListResponse,
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
