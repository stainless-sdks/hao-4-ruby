# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Limits
        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Get Account Limits from API
        #
        # @param account_id [String] ID of the account to get
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Accounts::LimitRetrieveResponse]
        #
        def retrieve(account_id, opts = {})
          req = {
            method: :get,
            path: ["accounts/%0s/limits", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::LimitRetrieveResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
