# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class HTML
        # Get a HTML Statement from API
        #
        # @param statement_id [String] ID of the statement to get
        #
        # @param params [Unit::Models::Statements::HTMLRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [String]
        #
        def retrieve(statement_id, params = {})
          @client.request(
            method: :get,
            path: ["statements/%0s/html", statement_id],
            headers: {"Accept" => "text/html"},
            model: String,
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
