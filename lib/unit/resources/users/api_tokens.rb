# frozen_string_literal: true

module Unit
  module Resources
    class Users
      class APITokens
        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Create an Org API Token via API
        #
        # @param user_id [String] ID of the user to create token for
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Users::APITokenCreateParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Users::APITokenCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Users::APITokenCreateResponse]
        #
        def create(user_id, params = {}, opts = {})
          parsed = Unit::Models::Users::APITokenCreateParams.dump(params)
          req = {
            method: :post,
            path: ["users/%0s/api-tokens", user_id],
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Users::APITokenCreateResponse
          }
          @client.request(req, opts)
        end

        # Get List Org API Tokens from API
        #
        # @param user_id [String] ID of the user to revoke token
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Users::APITokenListResponse]
        #
        def list(user_id, opts = {})
          req = {
            method: :get,
            path: ["users/%0s/api-tokens", user_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Users::APITokenListResponse
          }
          @client.request(req, opts)
        end

        # Get a Reward from API
        #
        # @param token_id [String] ID of the token to revoke
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Users::APITokenDeleteParams] Attributes to send in this request.
        #
        #   @option params [String] :user_id ID of the user to revoke token
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Users::APITokenDeleteResponse]
        #
        def delete(token_id, params = {}, opts = {})
          parsed = Unit::Models::Users::APITokenDeleteParams.dump(params)
          user_id = parsed.fetch(:user_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :delete,
            path: ["users/%0s/api-tokens/%1s", user_id, token_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Users::APITokenDeleteResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
