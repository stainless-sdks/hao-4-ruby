# frozen_string_literal: true

module Unit
  module Resources
    class CheckDeposits
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Check Deposit via API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::CheckDepositCreateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckDepositCreateParams::Data, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositCreateResponse]
      def create(params = {}, opts = {})
        parsed = Unit::Models::CheckDepositCreateParams.dump(params)
        req = {
          method: :post,
          path: "check-deposits",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckDepositCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Check Deposit from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositRetrieveResponse]
      def retrieve(check_deposit_id, opts = {})
        req = {
          method: :get,
          path: ["check-deposits/%0s", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update a Check Deposit via API
      #
      # @param check_deposit_id [String] ID of the check deposit to update
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::CheckDepositUpdateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckDepositUpdateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositUpdateResponse]
      def update(check_deposit_id, params = {}, opts = {})
        parsed = Unit::Models::CheckDepositUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["check-deposits/%0s", check_deposit_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CheckDepositUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List Check Deposits from API
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::CheckDepositListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckDepositListParams::Filter, nil] :filter
      #
      #   @option params [String, nil] :include
      #
      #   @option params [Unit::Models::CheckDepositListParams::Page, nil] :page Parameters for paginated list requests
      #
      #   @option params [String, nil] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositListResponse]
      def list(params = {}, opts = {})
        parsed = Unit::Models::CheckDepositListParams.dump(params)
        req = {
          method: :get,
          path: "check-deposits",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositListResponse
        }
        @client.request(req, opts)
      end

      # Get Back Check Deposit Image from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositBackResponse]
      def back(check_deposit_id, opts = {})
        req = {
          method: :get,
          path: ["check-deposits/%0s/back", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositBackResponse
        }
        @client.request(req, opts)
      end

      # Confirm a Check Deposit from API
      #
      # @param check_deposit_id [String] ID of the check deposit to confirm
      #
      # @param params [Hash{Symbol => Object}, Unit::Models::CheckDepositConfirmParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CheckDepositConfirmParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositConfirmResponse]
      def confirm(check_deposit_id, params = {}, opts = {})
        parsed = Unit::Models::CheckDepositConfirmParams.dump(params)
        req = {
          method: :post,
          path: ["check-deposits/%0s/confirm", check_deposit_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CheckDepositConfirmResponse
        }
        @client.request(req, opts)
      end

      # Get Front Check Deposit Image from API
      #
      # @param check_deposit_id [String] ID of the check deposit to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CheckDepositFrontResponse]
      def front(check_deposit_id, opts = {})
        req = {
          method: :get,
          path: ["check-deposits/%0s/front", check_deposit_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CheckDepositFrontResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
