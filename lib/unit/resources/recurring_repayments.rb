# frozen_string_literal: true

module Unit
  module Resources
    class RecurringRepayments
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Recurring Repayment via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringRepaymentCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringRepaymentCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::RecurringRepaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: "recurring-repayments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::RecurringRepaymentCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Recurring Repayment from API
      #
      # @param recurring_repayment_id [String] ID of the recurring repayment to get
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringRepaymentRetrieveParams] Attributes to send in this request.
      #
      #   @option params [String, nil] :include
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringRepaymentRetrieveResponse]
      def retrieve(recurring_repayment_id, params = {}, opts = {})
        parsed = Unit::Models::RecurringRepaymentRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["recurring-repayments/%0s", recurring_repayment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringRepaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Recurring Repayments from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringRepaymentListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RecurringRepaymentListParams::Filter, nil] :filter
      #
      #   @option params [Unit::Models::RecurringRepaymentListParams::Page, nil] :page Parameters for paginated list requests
      #
      #   @option params [Symbol, Unit::Models::RecurringRepaymentListParams::Sort, nil] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringRepaymentListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::RecurringRepaymentListParams.dump(params)
        req = {
          method: :get,
          path: "recurring-repayments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringRepaymentListResponse
        }
        @client.request(req, opts)
      end

      # Disable a Recurring Repayment
      #
      # @param recurring_repayment_id [String] Path param: ID of the recurring repayment to disable
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringRepaymentDisableParams] Attributes to send in this request.
      #
      #   @option params [Object] :body Body param:
      #
      #   @option params [String, nil] :include Query param:
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringRepaymentDisableResponse]
      def disable(recurring_repayment_id, params = {}, opts = {})
        parsed = Unit::Models::RecurringRepaymentDisableParams.dump(params)
        req = {
          method: :post,
          path: ["recurring-repayments/%0s/disable", recurring_repayment_id],
          query: parsed.except(:body),
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringRepaymentDisableResponse
        }
        @client.request(req, opts)
      end

      # Enable a Recurring Repayment
      #
      # @param recurring_repayment_id [String] Path param: ID of the recurring repayment to enable
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::RecurringRepaymentEnableParams] Attributes to send in this request.
      #
      #   @option params [Object] :body Body param:
      #
      #   @option params [String, nil] :include Query param:
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RecurringRepaymentEnableResponse]
      def enable(recurring_repayment_id, params = {}, opts = {})
        parsed = Unit::Models::RecurringRepaymentEnableParams.dump(params)
        req = {
          method: :post,
          path: ["recurring-repayments/%0s/enable", recurring_repayment_id],
          query: parsed.except(:body),
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringRepaymentEnableResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
