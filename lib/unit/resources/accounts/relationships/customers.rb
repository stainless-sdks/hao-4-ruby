# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Relationships
        class Customers
          # Add Owners to Account via API
          #
          # @param account_id [String] ID of the account to add owners to
          #
          # @param params [Unit::Models::Accounts::Relationships::CustomerAddParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<Unit::Models::Accounts::Relationships::CustomerAddParams::Data>] :data
          #
          #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Unit::Models::Accounts::Relationships::CustomerAddResponse]
          #
          def add(account_id, params)
            parsed, options = Unit::Models::Accounts::Relationships::CustomerAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["accounts/%0s/relationships/customers", account_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Accounts::Relationships::CustomerAddResponse,
              options: options
            )
          end

          # Remove Owners from Account via API
          #
          # @param account_id [String] ID of the account to add owners to
          #
          # @param params [Unit::Models::Accounts::Relationships::CustomerRemoveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<Unit::Models::Accounts::Relationships::CustomerRemoveParams::Data>] :data
          #
          #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Unit::Models::Accounts::Relationships::CustomerRemoveResponse]
          #
          def remove(account_id, params)
            parsed, options = Unit::Models::Accounts::Relationships::CustomerRemoveParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["accounts/%0s/relationships/customers", account_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Accounts::Relationships::CustomerRemoveResponse,
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
end
