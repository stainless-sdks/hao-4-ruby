# frozen_string_literal: true

module Unit
  module Resources
    class ReceivedPayments
      # Get a Received Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param params [Unit::Models::ReceivedPaymentRetrieveParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :included
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReceivedPaymentRetrieveResponse]
      #
      def retrieve(payment_id, params = {}, opts = {})
        parsed = Unit::Models::ReceivedPaymentRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["received-payments/%0s", payment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to update
      #
      # @param params [Unit::Models::ReceivedPaymentUpdateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ReceivedPaymentUpdateParams::Data] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReceivedPaymentUpdateResponse]
      #
      def update(payment_id, params = {}, opts = {})
        parsed = Unit::Models::ReceivedPaymentUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["received-payments/%0s", payment_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::ReceivedPaymentUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get Received Payments from API
      #
      # @param params [Unit::Models::ReceivedPaymentListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::ReceivedPaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::ReceivedPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReceivedPaymentListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::ReceivedPaymentListParams.dump(params)
        req = {
          method: :get,
          path: "received-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentListResponse
        }
        @client.request(req, opts)
      end

      # Advance a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to advance
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReceivedPaymentAdvanceResponse]
      #
      def advance(payment_id, opts = {})
        req = {
          method: :post,
          path: ["received-payments/%0s/advance", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentAdvanceResponse
        }
        @client.request(req, opts)
      end

      # Reprocess a Received Payment via API
      #
      # @param payment_id [String] ID of the payment to advance
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::ReceivedPaymentReprocessResponse]
      #
      def reprocess(payment_id, opts = {})
        req = {
          method: :post,
          path: ["received-payments/%0s/reprocess", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::ReceivedPaymentReprocessResponse
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
