# frozen_string_literal: true

module Unit
  module Resources
    class Repayments
      # Create a Repayment via API
      #
      # @param params [Unit::Models::RepaymentCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RepaymentCreateParams::Data::CreateBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerBookRepayment, Unit::Models::RepaymentCreateParams::Data::CreateACHRepayment, Unit::Models::RepaymentCreateParams::Data::CreateCapitalPartnerACHRepayment] :data
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RepaymentCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::RepaymentCreateParams.dump(params)
        req = {
          method: :post,
          path: "repayments",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::RepaymentCreateResponse
        }
        @client.request(req, opts)
      end

      # Get an Repayment from API
      #
      # @param repayment_id [String] ID of the repayment to get
      #
      # @param params [Unit::Models::RepaymentRetrieveParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :include
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RepaymentRetrieveResponse]
      #
      def retrieve(repayment_id, params = {}, opts = {})
        parsed = Unit::Models::RepaymentRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["repayments/%0s", repayment_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RepaymentRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Repayments from API
      #
      # @param params [Unit::Models::RepaymentListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RepaymentListParams::Filter] :filter
      #
      #   @option params [Unit::Models::RepaymentListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RepaymentListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::RepaymentListParams.dump(params)
        req = {
          method: :get,
          path: "repayments",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RepaymentListResponse
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
