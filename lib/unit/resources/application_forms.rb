# frozen_string_literal: true

module Unit
  module Resources
    class ApplicationForms
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create an Application Form via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationFormCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationFormCreateParams::Data, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationFormCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::ApplicationFormCreateParams.dump(params)
        req = {
          method: :post,
          path: "application-forms",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationFormCreateResponse
        }
        @client.request(req, opts)
      end

      # Get an Application Form from API
      #
      # @param application_form_id [String] ID of the application form to get
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationFormRetrieveParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :included
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationFormRetrieveResponse]
      def retrieve(application_form_id, params = {}, opts = {})
        parsed = Unit::Models::ApplicationFormRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["application-forms/%0s", application_form_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationFormRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Application Forms from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationFormListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationFormListParams::Filter, nil] :filter
      #
      #   @option params [Unit::Models::ApplicationFormListParams::Page, nil] :page Parameters for paginated list requests
      #
      #   @option params [String, nil] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationFormListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::ApplicationFormListParams.dump(params)
        req = {
          method: :get,
          path: "application-forms",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationFormListResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
