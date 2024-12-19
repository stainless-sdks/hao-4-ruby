# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class HTML
        # @param client [Unit::Client]
        def initialize(client:)
          @client = client
        end

        # Get a HTML Statement from API
        #
        # @param statement_id [String] ID of the statement to get
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [String]
        def retrieve(statement_id, opts = {})
          req = {
            method: :get,
            path: ["statements/%0s/html", statement_id],
            headers: {"Accept" => "text/html"},
            model: String
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
