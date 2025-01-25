# frozen_string_literal: true

module Unit
  module Resources
    class Applications
      # @return [Unit::Resources::Applications::Documents]
      attr_reader :documents

      # Create an Application via API
      #
      # @param params [Unit::Models::ApplicationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationCreateResponse]
      #
      def create(params)
        parsed, options = Unit::Models::ApplicationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "applications",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationCreateResponse,
          options: options
        )
      end

      # Get an Application from API
      #
      # @param application_id [String] ID of the application to get
      #
      # @param params [Unit::Models::ApplicationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :included
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationRetrieveResponse]
      #
      def retrieve(application_id, params = {})
        parsed, options = Unit::Models::ApplicationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["applications/%0s", application_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ApplicationRetrieveResponse,
          options: options
        )
      end

      # Update an Application via API
      #
      # @param application_id [String] ID of the application to update
      #
      # @param params [Unit::Models::ApplicationUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationUpdateResponse]
      #
      def update(application_id, params)
        parsed, options = Unit::Models::ApplicationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["applications/%0s", application_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::ApplicationUpdateResponse,
          options: options
        )
      end

      # Get List Applications from API
      #
      # @param params [Unit::Models::ApplicationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationListParams::Filter] :filter
      #
      #   @option params [Unit::Models::ApplicationListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::ApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "applications",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::ApplicationListResponse,
          options: options
        )
      end

      # Cancel a Application via API
      #
      # @param application_id [String] ID of the application to get
      #
      # @param params [Unit::Models::ApplicationCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ApplicationCancelParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ApplicationCancelResponse]
      #
      def cancel(application_id, params = {})
        parsed, options = Unit::Models::ApplicationCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["applications/%0s/cancel", application_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ApplicationCancelResponse,
          options: options
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @documents = Unit::Resources::Applications::Documents.new(client: client)
      end
    end
  end
end
