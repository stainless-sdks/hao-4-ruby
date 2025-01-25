# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class RepaymentInformation
        # Retrieve the repayment information for a specific account via API
        #
        # @param account_id [String] ID of the account to get repayment information for
        #
        # @param params [Unit::Models::Accounts::RepaymentInformationRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Accounts::RepaymentInformationRetrieveResponse]
        #
        def retrieve(account_id, params = {})
          @client.request(
            method: :get,
            path: ["accounts/%0s/repayment-information", account_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::RepaymentInformationRetrieveResponse,
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
