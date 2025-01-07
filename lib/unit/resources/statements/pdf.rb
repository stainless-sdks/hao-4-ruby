# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class Pdf
        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Get a PDF Statement from API
        #
        # @param statement_id [String] ID of the statement to get
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Object]
        #
        def retrieve(statement_id, opts = {})
          req = {
            method: :get,
            path: ["statements/%0s/pdf", statement_id],
            headers: {"Accept" => "application/pdf"},
            model: Unit::Unknown
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
