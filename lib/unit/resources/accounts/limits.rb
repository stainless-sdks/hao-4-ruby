# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Limits
        # Get Account Limits from API
        #
        # @param account_id [String] ID of the account to get
        #
        # @param params [Unit::Models::Accounts::LimitRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Accounts::LimitRetrieveResponse]
        #
        def retrieve(account_id, params = {})
          @client.request(
            method: :get,
            path: ["accounts/%0s/limits", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::LimitRetrieveResponse,
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
