# frozen_string_literal: true

module Unit
  module Resources
    class ReceivedPayments
      # Get a Received Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param params [Unit::Models::ReceivedPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :included
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReceivedPaymentRetrieveResponse]
      #
      def retrieve(payment_id, params = {})
        parsed, options = Unit::Models::ReceivedPaymentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["received-payments/%0s", payment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentRetrieveResponse,
          options: options
        )
      end

      # Update a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to update
      #
      # @param params [Unit::Models::ReceivedPaymentUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ReceivedPaymentUpdateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReceivedPaymentUpdateResponse]
      #
      def update(payment_id, params)
        parsed, options = Unit::Models::ReceivedPaymentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["received-payments/%0s", payment_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ReceivedPaymentUpdateResponse,
          options: options
        )
      end

      # Get Received Payments from API
      #
      # @param params [Unit::Models::ReceivedPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::ReceivedPaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::ReceivedPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReceivedPaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::ReceivedPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "received-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentListResponse,
          options: options
        )
      end

      # Advance a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to advance
      #
      # @param params [Unit::Models::ReceivedPaymentAdvanceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReceivedPaymentAdvanceResponse]
      #
      def advance(payment_id, params = {})
        @client.request(
          method: :post,
          path: ["received-payments/%0s/advance", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentAdvanceResponse,
          options: params[:request_options]
        )
      end

      # Reprocess a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to advance
      #
      # @param params [Unit::Models::ReceivedPaymentReprocessParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::ReceivedPaymentReprocessResponse]
      #
      def reprocess(payment_id, params = {})
        @client.request(
          method: :post,
          path: ["received-payments/%0s/reprocess", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentReprocessResponse,
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
