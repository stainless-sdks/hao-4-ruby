# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Relationships
        class Customers
          # @param client [Unit::Client]
          def initialize(client:)
            @client = client
          end

          # Add Owners to Account via API
          #
          # @param account_id [String] ID of the account to add owners to
          #
          # @param params [Hash{Symbol => Object}, Unit::Models::Accounts::Relationships::CustomerAddParams] Attributes to send in this request.
          #
          #   @option params [Array<Unit::Models::Accounts::Relationships::CustomerAddParams::Data>] :data
          #
          # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Unit::Models::Accounts::Relationships::CustomerAddResponse]
          def add(account_id, params = {}, opts = {})
            parsed = Unit::Models::Accounts::Relationships::CustomerAddParams.dump(params)
            req = {
              method: :post,
              path: ["accounts/%0s/relationships/customers", account_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Accounts::Relationships::CustomerAddResponse
            }
            @client.request(req, opts)
          end

          # Remove Owners from Account via API
          #
          # @param account_id [String] ID of the account to add owners to
          #
          # @param params [Hash{Symbol => Object}, Unit::Models::Accounts::Relationships::CustomerRemoveParams] Attributes to send in this request.
          #
          #   @option params [Array<Unit::Models::Accounts::Relationships::CustomerRemoveParams::Data>] :data
          #
          # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Unit::Models::Accounts::Relationships::CustomerRemoveResponse]
          def remove(account_id, params = {}, opts = {})
            parsed = Unit::Models::Accounts::Relationships::CustomerRemoveParams.dump(params)
            req = {
              method: :delete,
              path: ["accounts/%0s/relationships/customers", account_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Accounts::Relationships::CustomerRemoveResponse
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
