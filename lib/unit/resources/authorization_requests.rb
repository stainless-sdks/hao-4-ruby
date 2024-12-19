# frozen_string_literal: true

module Unit
  module Resources
    class AuthorizationRequests
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Get a Authorization Request from API
      #
      # @param authorization_id [String] ID of the authorization request to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationRequestRetrieveResponse]
      def retrieve(authorization_id, opts = {})
        req = {
          method: :get,
          path: ["authorization-requests/%0s", authorization_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRequestRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Authorization Requests from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::AuthorizationRequestListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AuthorizationRequestListParams::Filter, nil] :filter
      #
      #   @option params [Unit::Models::AuthorizationRequestListParams::Page, nil] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationRequestListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::AuthorizationRequestListParams.dump(params)
        req = {
          method: :get,
          path: "authorization-requests",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AuthorizationRequestListResponse
        }
        @client.request(req, opts)
      end

      # Approve a Authorization Request via API
      #
      # @param authorization_id [String] ID of the authorization request to approve
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::AuthorizationRequestApproveParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AuthorizationRequestApproveParams::Data, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationRequestApproveResponse]
      def approve(authorization_id, params = {}, opts = {})
        parsed = Unit::Models::AuthorizationRequestApproveParams.dump(params)
        req = {
          method: :post,
          path: ["authorization-requests/%0s/approve", authorization_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AuthorizationRequestApproveResponse
        }
        @client.request(req, opts)
      end

      # Decline Authorization Request via API
      #
      # @param authorization_id [String] ID of the authorization request to decline
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::AuthorizationRequestDeclineParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AuthorizationRequestDeclineParams::Data, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AuthorizationRequestDeclineResponse]
      def decline(authorization_id, params = {}, opts = {})
        parsed = Unit::Models::AuthorizationRequestDeclineParams.dump(params)
        req = {
          method: :post,
          path: ["authorization-requests/%0s/decline", authorization_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AuthorizationRequestDeclineResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
