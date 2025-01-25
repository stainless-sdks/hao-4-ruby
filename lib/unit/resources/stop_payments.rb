# frozen_string_literal: true

module Unit
  module Resources
    class StopPayments
      # Update a stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param params [Unit::Models::StopPaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::StopPaymentCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StopPayment]
      #
      def create(stop_payment_id, params)
        parsed, options = Unit::Models::StopPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["stop-payments/%0s", stop_payment_id],
          body: parsed,
          model: Unit::Models::StopPayment,
          options: options
        )
      end

      # Get details of a specific stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param params [Unit::Models::StopPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StopPayment]
      #
      def retrieve(stop_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["stop-payments/%0s", stop_payment_id],
          model: Unit::Models::StopPayment,
          options: params[:request_options]
        )
      end

      # Get a list of stop payments
      #
      # @param params [Unit::Models::StopPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::StopPaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::StopPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StopPaymentList]
      #
      def list(params = {})
        parsed, options = Unit::Models::StopPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "stop-payments",
          query: parsed,
          model: Unit::Models::StopPaymentList,
          options: options
        )
      end

      # Disable a stop payment
      #
      # @param stop_payment_id [String] ID of the stop payment
      #
      # @param params [Unit::Models::StopPaymentDisableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::StopPayment]
      #
      def disable(stop_payment_id, params = {})
        @client.request(
          method: :post,
          path: ["stop-payments/%0s/disable", stop_payment_id],
          model: Unit::Models::StopPayment,
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
