# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class BankPdf
        # Get Get Bank verification PDF from API
        #
        # @param account_id [String] ID of the account to get
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Object]
        #
        def retrieve(account_id, opts = {})
          req = {
            method: :get,
            path: ["statements/%0s/bank/pdf", account_id],
            headers: {"Accept" => "application/pdf"},
            model: Unit::Unknown
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
