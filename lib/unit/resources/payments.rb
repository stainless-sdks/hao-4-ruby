# frozen_string_literal: true

module Unit
  module Resources
    class Payments
      # Create a Payment via API
      #
      # @param params [Unit::Models::PaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::PaymentCreateParams::Data::CreateACHPayment, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid, Unit::Models::PaymentCreateParams::Data::CreateBookPayment, Unit::Models::PaymentCreateParams::Data::CreateWirePayment, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::PaymentCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::PaymentCreateResponse,
          options: options
        )
      end

      # Get a Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param params [Unit::Models::PaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :included
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::PaymentRetrieveResponse]
      #
      def retrieve(payment_id, params = {})
        parsed, options = Unit::Models::PaymentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["payments/%0s", payment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::PaymentRetrieveResponse,
          options: options
        )
      end

      # Update an Payment via API
      #
      # @param payment_id [String] ID of the payment to update
      #
      # @param params [Unit::Models::PaymentUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::PaymentUpdateResponse]
      #
      def update(payment_id, params)
        parsed, options = Unit::Models::PaymentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["payments/%0s", payment_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::PaymentUpdateResponse,
          options: options
        )
      end

      # Get List Payments from API
      #
      # @param params [Unit::Models::PaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::PaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::PaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::PaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::PaymentListResponse,
          options: options
        )
      end

      # Cancel a Payment via API
      #
      # @param payment_id [String] ID of the payment to cancel
      #
      # @param params [Unit::Models::PaymentCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :body
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::PaymentCancelResponse]
      #
      def cancel(payment_id, params)
        parsed, options = Unit::Models::PaymentCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["payments/%0s/cancel", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::PaymentCancelResponse,
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
