# frozen_string_literal: true

module Unit
  module Resources
    class RecurringPayments
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Recurring Payment via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringPaymentCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringPaymentCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::RecurringPaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: "recurring-payments",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::RecurringPaymentCreateResponse
        }
        @client.request(req, opts)
      end

      # Get Recurring Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringPaymentRetrieveResponse]
      def retrieve(payment_id, opts = {})
        req = {
          method: :get,
          path: ["recurring-payments/%0s", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringPaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get Recurring Payments List from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringPaymentListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RecurringPaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::RecurringPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringPaymentListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::RecurringPaymentListParams.dump(params)
        req = {
          method: :get,
          path: "recurring-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringPaymentListResponse
        }
        @client.request(req, opts)
      end

      # Disable Recurring Payment via API
      #
      # @param payment_id [String] ID of the payment to disable
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringPaymentDisableParams] Attributes to send in this request.
      #
      #   @option params [Object, nil] :body
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringPaymentDisableResponse]
      def disable(payment_id, params = {}, opts = {})
        parsed = Unit::Models::RecurringPaymentDisableParams.dump(params)
        req = {
          method: :post,
          path: ["recurring-payments/%0s/disable", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringPaymentDisableResponse
        }
        @client.request(req, opts)
      end

      # Enable Recurring Payment via API
      #
      # @param payment_id [String] ID of the payment to enable
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringPaymentEnableParams] Attributes to send in this request.
      #
      #   @option params [Object, nil] :body
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringPaymentEnableResponse]
      def enable(payment_id, params = {}, opts = {})
        parsed = Unit::Models::RecurringPaymentEnableParams.dump(params)
        req = {
          method: :post,
          path: ["recurring-payments/%0s/enable", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringPaymentEnableResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
