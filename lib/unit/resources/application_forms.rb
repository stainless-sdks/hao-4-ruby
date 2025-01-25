# frozen_string_literal: true

module Unit
  module Resources
    class ApplicationForms
      # Create an Application Form via API
      #
      # @param params [Unit::Models::ApplicationFormCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationFormCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationFormCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::ApplicationFormCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "application-forms",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationFormCreateResponse,
          options: options
        )
      end

      # Get an Application Form from API
      #
      # @param application_form_id [String] ID of the application form to get
      #
      # @param params [Unit::Models::ApplicationFormRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :included
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationFormRetrieveResponse]
      #
      def retrieve(application_form_id, params = {})
        parsed, options = Unit::Models::ApplicationFormRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["application-forms/%0s", application_form_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationFormRetrieveResponse,
          options: options
        )
      end

      # Get List Application Forms from API
      #
      # @param params [Unit::Models::ApplicationFormListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationFormListParams::Filter] :filter
      #
      #   @option params [Unit::Models::ApplicationFormListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationFormListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::ApplicationFormListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "application-forms",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationFormListResponse,
          options: options
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
