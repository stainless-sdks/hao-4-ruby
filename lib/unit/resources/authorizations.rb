# frozen_string_literal: true

module Unit
  module Resources
    class Authorizations
      # Get a Authorization from API
      #
      # @param authorization_id [String] ID of the authorization to get
      #
      # @param params [Unit::Models::AuthorizationRetrieveParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Boolean] :include_none_authorized
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationRetrieveResponse]
      #
      def retrieve(authorization_id, params = {}, opts = {})
        parsed = Unit::Models::AuthorizationRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["authorizations/%0s", authorization_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Authorizations from API
      #
      # @param params [Unit::Models::AuthorizationListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AuthorizationListParams::Filter] :filter
      #
      #   @option params [Unit::Models::AuthorizationListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::AuthorizationListParams.dump(params)
        req = {
          method: :get,
          path: "authorizations",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationListResponse
        }
        @client.request(req, opts)
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
