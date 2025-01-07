# frozen_string_literal: true

module Unit
  module Resources
    class TaxForms
      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Get a Tax Form from API
      #
      # @param tax_form_id [String] ID of the reward to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::TaxFormRetrieveResponse]
      #
      def retrieve(tax_form_id, opts = {})
        req = {
          method: :get,
          path: ["tax-forms/%0s", tax_form_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::TaxFormRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get Tax Forms List from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::TaxFormListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::TaxFormListParams::Filter] :filter
      #
      #   @option params [Unit::Models::TaxFormListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::TaxFormListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::TaxFormListParams.dump(params)
        req = {
          method: :get,
          path: "tax-forms",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::TaxFormListResponse
        }
        @client.request(req, opts)
      end

      # Get a Tax Form pdf from API
      #
      # @param tax_form_id [String] ID of the reward to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Object]
      #
      def pdf(tax_form_id, opts = {})
        req = {
          method: :get,
          path: ["tax-forms/%0s/pdf", tax_form_id],
          headers: {"Accept" => "application/pdf"},
          model: Unit::Unknown
        }
        @client.request(req, opts)
      end
    end
  end
end
