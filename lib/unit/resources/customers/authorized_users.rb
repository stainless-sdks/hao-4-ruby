# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class AuthorizedUsers
        # Add Authorized Users via API
        #
        # @param customer_id [String] ID of the customer to add authorized users to
        #
        # @param params [Unit::Models::Customers::AuthorizedUserCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Customers::AuthorizedUserCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Customers::AuthorizedUserCreateResponse]
        #
        def create(customer_id, params = {})
          parsed, options = Unit::Models::Customers::AuthorizedUserCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/%0s/authorized-users", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::AuthorizedUserCreateResponse,
            options: options
          )
        end

        # Remove Authorized Users via API
        #
        # @param customer_id [String] ID of the customer to remove authorized users from
        #
        # @param params [Unit::Models::Customers::AuthorizedUserDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Customers::AuthorizedUserDeleteParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Customers::AuthorizedUserDeleteResponse]
        #
        def delete(customer_id, params = {})
          parsed, options = Unit::Models::Customers::AuthorizedUserDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["customers/%0s/authorized-users", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::AuthorizedUserDeleteResponse,
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
