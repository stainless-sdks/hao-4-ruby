# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      # @return [Unit::Resources::Accounts::DepositProducts]
      attr_reader :deposit_products

      # @return [Unit::Resources::Accounts::Limits]
      attr_reader :limits

      # @return [Unit::Resources::Accounts::Relationships]
      attr_reader :relationships

      # @return [Unit::Resources::Accounts::RepaymentInformation]
      attr_reader :repayment_information

      # @return [Unit::Resources::Accounts::Transactions]
      attr_reader :transactions

      # Create Account via API
      #
      # @param params [Unit::Models::AccountCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountCreateParams::Data::CreateCreditAccount, Unit::Models::AccountCreateParams::Data::CreateDepositAccount, Unit::Models::AccountCreateParams::Data::CreateWalletAccount] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::AccountCreateParams.dump(params)
        req = {
          method: :post,
          path: "accounts",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AccountCreateResponse
        }
        @client.request(req, opts)
      end

      # Get an Account from API
      #
      # @param account_id [String] ID of the account to get
      #
      # @param params [Unit::Models::AccountRetrieveParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :include
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountRetrieveResponse]
      #
      def retrieve(account_id, params = {}, opts = {})
        parsed = Unit::Models::AccountRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["accounts/%0s", account_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update an Account via API
      #
      # @param account_id [String] ID of the account to update
      #
      # @param params [Unit::Models::AccountUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount, Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountUpdateResponse]
      #
      def update(account_id, params = {}, opts = {})
        parsed = Unit::Models::AccountUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["accounts/%0s", account_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::AccountUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List Accounts from API
      #
      # @param params [Unit::Models::AccountListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::AccountListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::AccountListParams.dump(params)
        req = {
          method: :get,
          path: "accounts",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountListResponse
        }
        @client.request(req, opts)
      end

      # Activate Control Agreement for Account via API
      #
      # @param account_id [String] ID of the account
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountActivateDacaResponse]
      #
      def activate_daca(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/activate-daca", account_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountActivateDacaResponse
        }
        @client.request(req, opts)
      end

      # Close an Account via API
      #
      # @param account_id [String] ID of the account to close
      #
      # @param params [Unit::Models::AccountCloseParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountCloseParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountCloseResponse]
      #
      def close(account_id, params = {}, opts = {})
        parsed = Unit::Models::AccountCloseParams.dump(params)
        req = {
          method: :post,
          path: ["accounts/%0s/close", account_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AccountCloseResponse
        }
        @client.request(req, opts)
      end

      # Deactivate Control Agreement for Account via API
      #
      # @param account_id [String] ID of the account
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountDeactivateDacaResponse]
      #
      def deactivate_daca(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/deactivate-daca", account_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountDeactivateDacaResponse
        }
        @client.request(req, opts)
      end

      # Enter Control Agreement for Account via API
      #
      # @param account_id [String] ID of the account
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountEnterDacaResponse]
      #
      def enter_daca(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/enter-daca", account_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountEnterDacaResponse
        }
        @client.request(req, opts)
      end

      # Freeze Account via API
      #
      # @param account_id [String] ID of the account to freeze
      #
      # @param params [Unit::Models::AccountFreezeParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::AccountFreezeParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountFreezeResponse]
      #
      def freeze_(account_id, params = {}, opts = {})
        parsed = Unit::Models::AccountFreezeParams.dump(params)
        req = {
          method: :post,
          path: ["accounts/%0s/freeze", account_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::AccountFreezeResponse
        }
        @client.request(req, opts)
      end

      # Reopen an Account via API
      #
      # @param account_id [String] ID of the account to close
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountReopenResponse]
      #
      def reopen(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/reopen", account_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountReopenResponse
        }
        @client.request(req, opts)
      end

      # Unfreeze an Account via API
      #
      # @param account_id [String] ID of the account to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::AccountUnfreezeResponse]
      #
      def unfreeze(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/unfreeze", account_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::AccountUnfreezeResponse
        }
        @client.request(req, opts)
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @deposit_products = Unit::Resources::Accounts::DepositProducts.new(client: client)
        @limits = Unit::Resources::Accounts::Limits.new(client: client)
        @relationships = Unit::Resources::Accounts::Relationships.new(client: client)
        @repayment_information = Unit::Resources::Accounts::RepaymentInformation.new(client: client)
        @transactions = Unit::Resources::Accounts::Transactions.new(client: client)
      end
    end
  end
end
