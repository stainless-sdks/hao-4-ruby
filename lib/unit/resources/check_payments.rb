# frozen_string_literal: true

module Unit
  module Resources
    class CheckPayments
      # Create Check Payment via API
      #
      # @param params [Unit::Models::CheckPaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckPaymentCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentCreateResponse]
      #
      def create(params)
        parsed, options = Unit::Models::CheckPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "check-payments",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckPaymentCreateResponse,
          options: options
        )
      end

      # Get a Check Payment from API
      #
      # @param check_payment_id [String] ID of the check payment to get
      #
      # @param params [Unit::Models::CheckPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentRetrieveResponse]
      #
      def retrieve(check_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["check-payments/%0s", check_payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get List Check Payments from API
      #
      # @param params [Unit::Models::CheckPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckPaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::CheckPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::CheckPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "check-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentListResponse,
          options: options
        )
      end

      # Approve a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to approve
      #
      # @param params [Unit::Models::CheckPaymentApproveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckPaymentApproveParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentApproveResponse]
      #
      def approve(check_payment_id, params = {})
        parsed, options = Unit::Models::CheckPaymentApproveParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["check-payments/%0s/approve", check_payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckPaymentApproveResponse,
          options: options
        )
      end

      # Get back image via API
      #
      # @param check_payment_id [String] ID of the check payment
      #
      # @param params [Unit::Models::CheckPaymentBackParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Object]
      #
      def back(check_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["check-payments/%0s/back", check_payment_id],
          headers: {"Accept" => "image/png"},
          model: Unit::Unknown,
          options: params[:request_options]
        )
      end

      # Cancel a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to cancel
      #
      # @param params [Unit::Models::CheckPaymentCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentCancelResponse]
      #
      def cancel(check_payment_id, params = {})
        @client.request(
          method: :post,
          path: ["check-payments/%0s/cancel", check_payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentCancelResponse,
          options: params[:request_options]
        )
      end

      # Get front image via API
      #
      # @param check_payment_id [String] ID of the check payment
      #
      # @param params [Unit::Models::CheckPaymentFrontParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Object]
      #
      def front(check_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["check-payments/%0s/front", check_payment_id],
          headers: {"Accept" => "image/png"},
          model: Unit::Unknown,
          options: params[:request_options]
        )
      end

      # Return a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to return
      #
      # @param params [Unit::Models::CheckPaymentReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckPaymentReturnParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckPaymentReturnResponse]
      #
      def return_(check_payment_id, params = {})
        parsed, options = Unit::Models::CheckPaymentReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["check-payments/%0s/return", check_payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckPaymentReturnResponse,
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
