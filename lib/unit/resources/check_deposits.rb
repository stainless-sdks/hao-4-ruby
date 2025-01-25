# frozen_string_literal: true

module Unit
  module Resources
    class CheckDeposits
      # Create a Check Deposit via API
      #
      # @param params [Unit::Models::CheckDepositCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckDepositCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::CheckDepositCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "check-deposits",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckDepositCreateResponse,
          options: options
        )
      end

      # Get a Check Deposit from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param params [Unit::Models::CheckDepositRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositRetrieveResponse]
      #
      def retrieve(check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["check-deposits/%0s", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Check Deposit via API
      #
      # @param check_deposit_id [String] ID of the check deposit to update
      #
      # @param params [Unit::Models::CheckDepositUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckDepositUpdateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositUpdateResponse]
      #
      def update(check_deposit_id, params)
        parsed, options = Unit::Models::CheckDepositUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["check-deposits/%0s", check_deposit_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckDepositUpdateResponse,
          options: options
        )
      end

      # Get List Check Deposits from API
      #
      # @param params [Unit::Models::CheckDepositListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckDepositListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::CheckDepositListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::CheckDepositListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "check-deposits",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositListResponse,
          options: options
        )
      end

      # Get Back Check Deposit Image from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param params [Unit::Models::CheckDepositBackParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositBackResponse]
      #
      def back(check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["check-deposits/%0s/back", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositBackResponse,
          options: params[:request_options]
        )
      end

      # Confirm a Check Deposit from API
      #
      # @param check_deposit_id [String] ID of the check deposit to confirm
      #
      # @param params [Unit::Models::CheckDepositConfirmParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CheckDepositConfirmParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositConfirmResponse]
      #
      def confirm(check_deposit_id, params)
        parsed, options = Unit::Models::CheckDepositConfirmParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["check-deposits/%0s/confirm", check_deposit_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckDepositConfirmResponse,
          options: options
        )
      end

      # Get Front Check Deposit Image from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param params [Unit::Models::CheckDepositFrontParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CheckDepositFrontResponse]
      #
      def front(check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["check-deposits/%0s/front", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositFrontResponse,
          options: params[:request_options]
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
