# frozen_string_literal: true

module Unit
  module Resources
    class CheckPayments
      # Create Check Payment via API
      #
      # @param params [Unit::Models::CheckPaymentCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckPaymentCreateParams::Data] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::CheckPaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: "check-payments",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckPaymentCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Check Payment from API
      #
      # @param check_payment_id [String] ID of the check payment to get
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentRetrieveResponse]
      #
      def retrieve(check_payment_id, opts = {})
        req = {
          method: :get,
          path: ["check-payments/%0s", check_payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Check Payments from API
      #
      # @param params [Unit::Models::CheckPaymentListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckPaymentListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::CheckPaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::CheckPaymentListParams.dump(params)
        req = {
          method: :get,
          path: "check-payments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentListResponse
        }
        @client.request(req, opts)
      end

      # Approve a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to approve
      #
      # @param params [Unit::Models::CheckPaymentApproveParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckPaymentApproveParams::Data] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentApproveResponse]
      #
      def approve(check_payment_id, params = {}, opts = {})
        parsed = Unit::Models::CheckPaymentApproveParams.dump(params)
        req = {
          method: :post,
          path: ["check-payments/%0s/approve", check_payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckPaymentApproveResponse
        }
        @client.request(req, opts)
      end

      # Get back image via API
      #
      # @param check_payment_id [String] ID of the check payment
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Object]
      #
      def back(check_payment_id, opts = {})
        req = {
          method: :get,
          path: ["check-payments/%0s/back", check_payment_id],
          headers: {"Accept" => "image/png"},
          model: Unit::Unknown
        }
        @client.request(req, opts)
      end

      # Cancel a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to cancel
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentCancelResponse]
      #
      def cancel(check_payment_id, opts = {})
        req = {
          method: :post,
          path: ["check-payments/%0s/cancel", check_payment_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckPaymentCancelResponse
        }
        @client.request(req, opts)
      end

      # Get front image via API
      #
      # @param check_payment_id [String] ID of the check payment
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Object]
      #
      def front(check_payment_id, opts = {})
        req = {
          method: :get,
          path: ["check-payments/%0s/front", check_payment_id],
          headers: {"Accept" => "image/png"},
          model: Unit::Unknown
        }
        @client.request(req, opts)
      end

      # Return a Check Payment via API
      #
      # @param check_payment_id [String] ID of the check payment to return
      #
      # @param params [Unit::Models::CheckPaymentReturnParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckPaymentReturnParams::Data] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckPaymentReturnResponse]
      #
      def return_(check_payment_id, params = {}, opts = {})
        parsed = Unit::Models::CheckPaymentReturnParams.dump(params)
        req = {
          method: :post,
          path: ["check-payments/%0s/return", check_payment_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckPaymentReturnResponse
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
