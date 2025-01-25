# frozen_string_literal: true

module Unit
  module Resources
    class AuthorizationRequests
      # Get a Authorization Request from API
      #
      # @param authorization_id [String] ID of the authorization request to get
      #
      # @param params [Unit::Models::AuthorizationRequestRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationRequestRetrieveResponse]
      #
      def retrieve(authorization_id, params = {})
        @client.request(
          method: :get,
          path: ["authorization-requests/%0s", authorization_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRequestRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get List Authorization Requests from API
      #
      # @param params [Unit::Models::AuthorizationRequestListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AuthorizationRequestListParams::Filter] :filter
      #
      #   @option params [Unit::Models::AuthorizationRequestListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationRequestListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::AuthorizationRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "authorization-requests",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRequestListResponse,
          options: options
        )
      end

      # Approve a Authorization Request via API
      #
      # @param authorization_id [String] ID of the authorization request to approve
      #
      # @param params [Unit::Models::AuthorizationRequestApproveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AuthorizationRequestApproveParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationRequestApproveResponse]
      #
      def approve(authorization_id, params = {})
        parsed, options = Unit::Models::AuthorizationRequestApproveParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["authorization-requests/%0s/approve", authorization_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AuthorizationRequestApproveResponse,
          options: options
        )
      end

      # Decline Authorization Request via API
      #
      # @param authorization_id [String] ID of the authorization request to decline
      #
      # @param params [Unit::Models::AuthorizationRequestDeclineParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::AuthorizationRequestDeclineParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::AuthorizationRequestDeclineResponse]
      #
      def decline(authorization_id, params = {})
        parsed, options = Unit::Models::AuthorizationRequestDeclineParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["authorization-requests/%0s/decline", authorization_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AuthorizationRequestDeclineResponse,
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
