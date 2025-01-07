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

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @bank_pdf = Unit::Resources::Statements::BankPdf.new(client: client)
        @html = Unit::Resources::Statements::HTML.new(client: client)
        @pdf = Unit::Resources::Statements::Pdf.new(client: client)
      end

      # Get List Statements from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::StatementListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::StatementListParams::Filter] :filter
      #
      #   @option params [Unit::Models::StatementListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StatementListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::StatementListParams.dump(params)
        req = {
          method: :get,
          path: "statements",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::StatementListResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
