# frozen_string_literal: true

module Unit
  module Resources
    class Webhooks
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Webhook via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::WebhookCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::WebhookCreateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::WebhookCreateParams.dump(params)
        req = {
          method: :post,
          path: "webhooks",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::WebhookCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Webhook from API
      #
      # @param webhook_id [String] ID of the webhook to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookRetrieveResponse]
      def retrieve(webhook_id, opts = {})
        req = {
          method: :get,
          path: ["webhooks/%0s", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update a Webhook via API
      #
      # @param webhook_id [String] ID of the Webhook to update
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::WebhookUpdateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::WebhookUpdateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookUpdateResponse]
      def update(webhook_id, params = {}, opts = {})
        parsed = Unit::Models::WebhookUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["webhooks/%0s", webhook_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::WebhookUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List Webhooks from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::WebhookListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::WebhookListParams::Filter] :filter
      #
      #   @option params [Unit::Models::WebhookListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::WebhookListParams.dump(params)
        req = {
          method: :get,
          path: "webhooks",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json"},
          model: Unit::Models::WebhookListResponse
        }
        @client.request(req, opts)
      end

      # Disable a Webhook via API
      #
      # @param webhook_id [String] ID of the webhook to disable
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookDisableResponse]
      def disable(webhook_id, opts = {})
        req = {
          method: :post,
          path: ["webhooks/%0s/disable", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookDisableResponse
        }
        @client.request(req, opts)
      end

      # Enable a Webhook via API
      #
      # @param webhook_id [String] ID of the webhook to enable
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::WebhookEnableResponse]
      def enable(webhook_id, opts = {})
        req = {
          method: :post,
          path: ["webhooks/%0s/enable", webhook_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::WebhookEnableResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
