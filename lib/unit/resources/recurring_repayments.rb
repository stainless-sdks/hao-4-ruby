# frozen_string_literal: true

module Unit
  module Resources
    class RecurringRepayments
      # Create a Recurring Repayment via API
      #
      # @param params [Unit::Models::RecurringRepaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringBookRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerACHRepayment, Unit::Models::RecurringRepaymentCreateParams::Data::CreateRecurringCapitalPartnerBookRepayment] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringRepaymentCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::RecurringRepaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "recurring-repayments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::RecurringRepaymentCreateResponse,
          options: options
        )
      end

      # Get a Recurring Repayment from API
      #
      # @param recurring_repayment_id [String] ID of the recurring repayment to get
      #
      # @param params [Unit::Models::RecurringRepaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringRepaymentRetrieveResponse]
      #
      def retrieve(recurring_repayment_id, params = {})
        parsed, options = Unit::Models::RecurringRepaymentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["recurring-repayments/%0s", recurring_repayment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringRepaymentRetrieveResponse,
          options: options
        )
      end

      # Get List Recurring Repayments from API
      #
      # @param params [Unit::Models::RecurringRepaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RecurringRepaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::RecurringRepaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Symbol, Unit::Models::RecurringRepaymentListParams::Sort] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringRepaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::RecurringRepaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "recurring-repayments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RecurringRepaymentListResponse,
          options: options
        )
      end

      # Disable a Recurring Repayment
      #
      # @param recurring_repayment_id [String] Path param: ID of the recurring repayment to disable
      #
      # @param params [Unit::Models::RecurringRepaymentDisableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :body Body param:
      #
      #   @option params [String] :include Query param:
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringRepaymentDisableResponse]
      #
      def disable(recurring_repayment_id, params)
        parsed, options = Unit::Models::RecurringRepaymentDisableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["recurring-repayments/%0s/disable", recurring_repayment_id],
          query: parsed.except(:body),
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringRepaymentDisableResponse,
          options: options
        )
      end

      # Enable a Recurring Repayment
      #
      # @param recurring_repayment_id [String] Path param: ID of the recurring repayment to enable
      #
      # @param params [Unit::Models::RecurringRepaymentEnableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :body Body param:
      #
      #   @option params [String] :include Query param:
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RecurringRepaymentEnableResponse]
      #
      def enable(recurring_repayment_id, params)
        parsed, options = Unit::Models::RecurringRepaymentEnableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["recurring-repayments/%0s/enable", recurring_repayment_id],
          query: parsed.except(:body),
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed[:body],
          model: Unit::Models::RecurringRepaymentEnableResponse,
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
