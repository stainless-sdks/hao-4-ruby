# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class RepaymentInformation
        # @param client [Unit::Client]
        def initialize(client:)
          @client = client
        end

        # Retrieve the repayment information for a specific account via API
        #
        # @param account_id [String] ID of the account to get repayment information for
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Accounts::RepaymentInformationRetrieveResponse]
        def retrieve(account_id, opts = {})
          req = {
            method: :get,
            path: ["accounts/%0s/repayment-information", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::RepaymentInformationRetrieveResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
