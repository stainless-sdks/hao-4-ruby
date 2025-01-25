# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      class Pdf
        # Get a PDF Statement from API
        #
        # @param statement_id [String] ID of the statement to get
        #
        # @param params [Unit::Models::Statements::PdfRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Object]
        #
        def retrieve(statement_id, params = {})
          @client.request(
            method: :get,
            path: ["statements/%0s/pdf", statement_id],
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
