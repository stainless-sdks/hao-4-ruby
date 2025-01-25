# frozen_string_literal: true

module Unit
  module Resources
    class Webhooks
      # Create a Webhook via API
      #
      # @param params [Unit::Models::WebhookCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::WebhookCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Get a Webhook from API
      #
      # @param webhook_id [String] ID of the webhook to get
      #
      # @param params [Unit::Models::WebhookRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookRetrieveResponse]
      #
      def retrieve(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/%0s", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Webhook via API
      #
      # @param webhook_id [String] ID of the Webhook to update
      #
      # @param params [Unit::Models::WebhookUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::WebhookUpdateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookUpdateResponse]
      #
      def update(webhook_id, params = {})
        parsed, options = Unit::Models::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["webhooks/%0s", webhook_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::WebhookUpdateResponse,
          options: options
        )
      end

      # Get List Webhooks from API
      #
      # @param params [Unit::Models::WebhookListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::WebhookListParams::Filter] :filter
      #
      #   @option params [Unit::Models::WebhookListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::WebhookListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhooks",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::WebhookListResponse,
          options: options
        )
      end

      # Disable a Webhook via API
      #
      # @param webhook_id [String] ID of the webhook to disable
      #
      # @param params [Unit::Models::WebhookDisableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookDisableResponse]
      #
      def disable(webhook_id, params = {})
        @client.request(
          method: :post,
          path: ["webhooks/%0s/disable", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookDisableResponse,
          options: params[:request_options]
        )
      end

      # Enable a Webhook via API
      #
      # @param webhook_id [String] ID of the webhook to enable
      #
      # @param params [Unit::Models::WebhookEnableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::WebhookEnableResponse]
      #
      def enable(webhook_id, params = {})
        @client.request(
          method: :post,
          path: ["webhooks/%0s/enable", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookEnableResponse,
          options: params[:request_options]
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
