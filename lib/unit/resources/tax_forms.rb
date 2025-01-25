# frozen_string_literal: true

module Unit
  module Resources
    class TaxForms
      # Get a Tax Form from API
      #
      # @param tax_form_id [String] ID of the reward to get
      #
      # @param params [Unit::Models::TaxFormRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::TaxFormRetrieveResponse]
      #
      def retrieve(tax_form_id, params = {})
        @client.request(
          method: :get,
          path: ["tax-forms/%0s", tax_form_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::TaxFormRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get Tax Forms List from API
      #
      # @param params [Unit::Models::TaxFormListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::TaxFormListParams::Filter] :filter
      #
      #   @option params [Unit::Models::TaxFormListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::TaxFormListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::TaxFormListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "tax-forms",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::TaxFormListResponse,
          options: options
        )
      end

      # Get a Tax Form pdf from API
      #
      # @param tax_form_id [String] ID of the reward to get
      #
      # @param params [Unit::Models::TaxFormPdfParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Object]
      #
      def pdf(tax_form_id, params = {})
        @client.request(
          method: :get,
          path: ["tax-forms/%0s/pdf", tax_form_id],
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
