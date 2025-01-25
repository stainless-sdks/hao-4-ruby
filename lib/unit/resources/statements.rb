# frozen_string_literal: true

module Unit
  module Resources
    class Statements
      # @return [Unit::Resources::Statements::BankPdf]
      attr_reader :bank_pdf

      # @return [Unit::Resources::Statements::HTML]
      attr_reader :html

      # @return [Unit::Resources::Statements::Pdf]
      attr_reader :pdf

      # Get List Statements from API
      #
      # @param params [Unit::Models::StatementListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::StatementListParams::Filter] :filter
      #
      #   @option params [Unit::Models::StatementListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StatementListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::StatementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "statements",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::StatementListResponse,
          options: options
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @bank_pdf = Unit::Resources::Statements::BankPdf.new(client: client)
        @html = Unit::Resources::Statements::HTML.new(client: client)
        @pdf = Unit::Resources::Statements::Pdf.new(client: client)
      end
    end
  end
end
