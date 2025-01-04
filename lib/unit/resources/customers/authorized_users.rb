# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class AuthorizedUsers
        # @param client [Unit::Client]
        def initialize(client:)
          @client = client
        end

        # Add Authorized Users via API
        #
        # @param customer_id [String] ID of the customer to add authorized users to
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Customers::AuthorizedUserCreateParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Customers::AuthorizedUserCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Customers::AuthorizedUserCreateResponse]
        def create(customer_id, params = {}, opts = {})
          parsed = Unit::Models::Customers::AuthorizedUserCreateParams.dump(params)
          req = {
            method: :post,
            path: ["customers/%0s/authorized-users", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::AuthorizedUserCreateResponse
          }
          @client.request(req, opts)
        end

        # Remove Authorized Users via API
        #
        # @param customer_id [String] ID of the customer to remove authorized users from
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Customers::AuthorizedUserDeleteParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Customers::AuthorizedUserDeleteParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Customers::AuthorizedUserDeleteResponse]
        def delete(customer_id, params = {}, opts = {})
          parsed = Unit::Models::Customers::AuthorizedUserDeleteParams.dump(params)
          req = {
            method: :delete,
            path: ["customers/%0s/authorized-users", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::AuthorizedUserDeleteResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
