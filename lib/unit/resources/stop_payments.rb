# frozen_string_literal: true

module Unit
  module Resources
    class StopPayments
      # Update a stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param params [Unit::Models::StopPaymentCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::StopPaymentCreateParams::Data] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StopPayment]
      #
      def create(stop_payment_id, params = {}, opts = {})
        parsed = Unit::Models::StopPaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: ["stop-payments/%0s", stop_payment_id],
          body: parsed,
          model: Unit::Models::StopPayment
        }
        @client.request(req, opts)
      end

      # Get details of a specific stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StopPayment]
      #
      def retrieve(stop_payment_id, opts = {})
        req = {
          method: :get,
          path: ["stop-payments/%0s", stop_payment_id],
          model: Unit::Models::StopPayment
        }
        @client.request(req, opts)
      end

      # Get a list of stop payments
      #
      # @param params [Unit::Models::StopPaymentListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::StopPaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::StopPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StopPaymentList]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::StopPaymentListParams.dump(params)
        req = {
          method: :get,
          path: "stop-payments",
          query: parsed,
          model: Unit::Models::StopPaymentList
        }
        @client.request(req, opts)
      end

      # Disable a stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::StopPayment]
      #
      def disable(stop_payment_id, opts = {})
        req = {
          method: :post,
          path: ["stop-payments/%0s/disable", stop_payment_id],
          model: Unit::Models::StopPayment
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
