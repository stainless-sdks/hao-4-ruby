# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Transactions
        # Get a Transaction from API
        #
        # @param transaction_id [String] ID of the transaction
        #
        # @param params [Unit::Models::Accounts::TransactionRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_id ID of the account to get transaction from
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Accounts::TransactionRetrieveResponse]
        #
        def retrieve(transaction_id, params)
          parsed, options = Unit::Models::Accounts::TransactionRetrieveParams.dump_request(params)
          account_id = parsed.fetch(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["accounts/%0s/transactions/%1s", account_id, transaction_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Accounts::TransactionRetrieveResponse,
            options: options
          )
        end

        # Update a Transaction via API
        #
        # @param transaction_id [String] Path param: ID of the transaction to update
        #
        # @param params [Unit::Models::Accounts::TransactionUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_id Path param: ID of the account to update transaction from
        #
        #   @option params [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction] :data Body param:
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Accounts::TransactionUpdateResponse]
        #
        def update(transaction_id, params)
          parsed, options = Unit::Models::Accounts::TransactionUpdateParams.dump_request(params)
          account_id = parsed.fetch(:account_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :patch,
            path: ["accounts/%0s/transactions/%1s", account_id, transaction_id],
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed.except(:account_id),
            model: Unit::Models::Accounts::TransactionUpdateResponse,
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
end
