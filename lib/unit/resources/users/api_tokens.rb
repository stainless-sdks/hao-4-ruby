# frozen_string_literal: true

module Unit
  module Resources
    class Users
      class APITokens
        # Create an Org API Token via API
        #
        # @param user_id [String] ID of the user to create token for
        #
        # @param params [Unit::Models::Users::APITokenCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Users::APITokenCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Users::APITokenCreateResponse]
        #
        def create(user_id, params = {})
          parsed, options = Unit::Models::Users::APITokenCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["users/%0s/api-tokens", user_id],
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Users::APITokenCreateResponse,
            options: options
          )
        end

        # Get List Org API Tokens from API
        #
        # @param user_id [String] ID of the user to revoke token
        #
        # @param params [Unit::Models::Users::APITokenListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Users::APITokenListResponse]
        #
        def list(user_id, params = {})
          @client.request(
            method: :get,
            path: ["users/%0s/api-tokens", user_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Users::APITokenListResponse,
            options: params[:request_options]
          )
        end

        # Get a Reward from API
        #
        # @param token_id [String] ID of the token to revoke
        #
        # @param params [Unit::Models::Users::APITokenDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :user_id ID of the user to revoke token
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Users::APITokenDeleteResponse]
        #
        def delete(token_id, params)
          parsed, options = Unit::Models::Users::APITokenDeleteParams.dump_request(params)
          user_id = parsed.fetch(:user_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :delete,
            path: ["users/%0s/api-tokens/%1s", user_id, token_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Users::APITokenDeleteResponse,
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
end
