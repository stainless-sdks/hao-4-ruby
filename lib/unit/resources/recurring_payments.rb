# frozen_string_literal: true

module Unit
  module Resources
    class RecurringPayments
      # Create a Recurring Payment via API
      #
      # @param params [Unit::Models::RecurringPaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringDebitACHPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditBookPayment, Unit::Models::RecurringPaymentCreateParams::Data::CreateRecurringCreditACHPayment] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringPaymentCreateResponse]
      #
      def create(params)
        parsed, options = Unit::Models::RecurringPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "recurring-payments",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::RecurringPaymentCreateResponse,
          options: options
        )
      end

      # Get Recurring Payment from API
      #
      # @param payment_id [String] ID of the payment to get
      #
      # @param params [Unit::Models::RecurringPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringPaymentRetrieveResponse]
      #
      def retrieve(payment_id, params = {})
        @client.request(
          method: :get,
          path: ["recurring-payments/%0s", payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringPaymentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get Recurring Payments List from API
      #
      # @param params [Unit::Models::RecurringPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RecurringPaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::RecurringPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringPaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::RecurringPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "recurring-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringPaymentListResponse,
          options: options
        )
      end

      # Disable Recurring Payment via API
      #
      # @param payment_id [String] ID of the payment to disable
      #
      # @param params [Unit::Models::RecurringPaymentDisableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :body
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringPaymentDisableResponse]
      #
      def disable(payment_id, params)
        parsed, options = Unit::Models::RecurringPaymentDisableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["recurring-payments/%0s/disable", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringPaymentDisableResponse,
          options: options
        )
      end

      # Enable Recurring Payment via API
      #
      # @param payment_id [String] ID of the payment to enable
      #
      # @param params [Unit::Models::RecurringPaymentEnableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :body
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringPaymentEnableResponse]
      #
      def enable(payment_id, params)
        parsed, options = Unit::Models::RecurringPaymentEnableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["recurring-payments/%0s/enable", payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringPaymentEnableResponse,
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
