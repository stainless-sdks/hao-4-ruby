# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class DepositProducts
        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Retrieve the list of available deposit products compatible to the account.
        #
        # @param account_id [String] ID of the account to get deposit products for
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Accounts::DepositProductListResponse]
        #
        def list(account_id, opts = {})
          req = {
            method: :get,
            path: ["accounts/%0s/deposit-products", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::DepositProductListResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
