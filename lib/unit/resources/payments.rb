# frozen_string_literal: true

module Unit
  module Resources
    class Payments
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Payment via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::PaymentCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::PaymentCreateParams::Data::CreateACHPayment, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentCounterparty, Unit::Models::PaymentCreateParams::Data::CreateACHPaymentPlaid, Unit::Models::PaymentCreateParams::Data::CreateBookPayment, Unit::Models::PaymentCreateParams::Data::CreateWirePayment, Unit::Models::PaymentCreateParams::Data::CreatePushToCardPayment] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::PaymentCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::PaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: "payments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::PaymentCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::PaymentRetrieveParams] Attributes to send in this request.
      #
      #   @option params [String] :included
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::PaymentRetrieveResponse]
      def retrieve(payment_id, params = {}, opts = {})
        parsed = Unit::Models::PaymentRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["payments/%0s", payment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::PaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update an Payment via API
      #
      # @param payment_id [String] ID of the payment to update
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::PaymentUpdateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::PaymentUpdateResponse]
      def update(payment_id, params = {}, opts = {})
        parsed = Unit::Models::PaymentUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["payments/%0s", payment_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::PaymentUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List Payments from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::PaymentListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::PaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::PaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::PaymentListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::PaymentListParams.dump(params)
        req = {
          method: :get,
          path: "payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::PaymentListResponse
        }
        @client.request(req, opts)
      end

      # Cancel a Payment via API
      #
      # @param payment_id [String] ID of the payment to cancel
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::PaymentCancelParams] Attributes to send in this request.
      #
      #   @option params [Object, nil] :body
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::PaymentCancelResponse]
      def cancel(payment_id, params = {}, opts = {})
        parsed = Unit::Models::PaymentCancelParams.dump(params)
        req = {
          method: :post,
          path: ["payments/%0s/cancel", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::PaymentCancelResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
