# frozen_string_literal: true

module Unit
  module Resources
    class Authorizations
      # Get a Authorization from API
      #
      # @param authorization_id [String] ID of the authorization to get
      #
      # @param params [Unit::Models::AuthorizationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_none_authorized
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationRetrieveResponse]
      #
      def retrieve(authorization_id, params = {})
        parsed, options = Unit::Models::AuthorizationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["authorizations/%0s", authorization_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRetrieveResponse,
          options: options
        )
      end

      # Get List Authorizations from API
      #
      # @param params [Unit::Models::AuthorizationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AuthorizationListParams::Filter] :filter
      #
      #   @option params [Unit::Models::AuthorizationListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::AuthorizationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "authorizations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationListResponse,
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
