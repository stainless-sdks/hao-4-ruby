# frozen_string_literal: true

module Unit
  module Resources
    class Applications
      # @return [Unit::Resources::Applications::Documents]
      attr_reader :documents

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @documents = Unit::Resources::Applications::Documents.new(client: client)
      end

      # Create an Application via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::ApplicationCreateParams.dump(params)
        req = {
          method: :post,
          path: "applications",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationCreateResponse
        }
        @client.request(req, opts)
      end

      # Get an Application from API
      #
      # @param application_id [String] ID of the application to get
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationRetrieveParams] Attributes to send in this request.
      #
      #   @option params [String] :included
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationRetrieveResponse]
      #
      def retrieve(application_id, params = {}, opts = {})
        parsed = Unit::Models::ApplicationRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["applications/%0s", application_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update an Application via API
      #
      # @param application_id [String] ID of the application to update
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationUpdateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationUpdateResponse]
      #
      def update(application_id, params = {}, opts = {})
        parsed = Unit::Models::ApplicationUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["applications/%0s", application_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::ApplicationUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List Applications from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationListParams::Filter] :filter
      #
      #   @option params [Unit::Models::ApplicationListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::ApplicationListParams.dump(params)
        req = {
          method: :get,
          path: "applications",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::ApplicationListResponse
        }
        @client.request(req, opts)
      end

      # Cancel a Application via API
      #
      # @param application_id [String] ID of the application to get
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::ApplicationCancelParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ApplicationCancelParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ApplicationCancelResponse]
      #
      def cancel(application_id, params = {}, opts = {})
        parsed = Unit::Models::ApplicationCancelParams.dump(params)
        req = {
          method: :post,
          path: ["applications/%0s/cancel", application_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationCancelResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
