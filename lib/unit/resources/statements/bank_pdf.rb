# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class BankPdf
        # Get Get Bank verification PDF from API
        #
        # @param account_id [String] ID of the account to get
        #
        # @param params [Unit::Models::Statements::BankPdfRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Object]
        #
        def retrieve(account_id, params = {})
          @client.request(
            method: :get,
            path: ["statements/%0s/bank/pdf", account_id],
            headers: {"Accept" => "application/pdf"},
            model: Unit::Unknown,
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
