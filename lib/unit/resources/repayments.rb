# frozen_string_literal: true

module Unit
  module Resources
    class Repayments
      # Create a Repayment via API
      #
      # @param params [Unit::Models::RepaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RepaymentCreateResponse]
      #
      def create(params)
        parsed, options = Unit::Models::RepaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "repayments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::RepaymentCreateResponse,
          options: options
        )
      end

      # Get an Repayment from API
      #
      # @param repayment_id [String] ID of the repayment to get
      #
      # @param params [Unit::Models::RepaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RepaymentRetrieveResponse]
      #
      def retrieve(repayment_id, params = {})
        parsed, options = Unit::Models::RepaymentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["repayments/%0s", repayment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RepaymentRetrieveResponse,
          options: options
        )
      end

      # Get List Repayments from API
      #
      # @param params [Unit::Models::RepaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RepaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::RepaymentListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RepaymentListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::RepaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "repayments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RepaymentListResponse,
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
