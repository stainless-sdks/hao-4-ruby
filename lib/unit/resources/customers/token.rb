# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class Token
        # @return [Unit::Resources::Customers::Token::Verification]
        attr_reader :verification

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @verification = Unit::Resources::Customers::Token::Verification.new(client: client)
        end

        # Create a Customer Token via API
        #
        # @param customer_id [String] ID of the customer to create token for
        #
        # @param params [Unit::Models::Customers::TokenCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Customers::TokenCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Customers::TokenCreateResponse]
        #
        def create(customer_id, params = {}, opts = {})
          parsed = Unit::Models::Customers::TokenCreateParams.dump(params)
          req = {
            method: :post,
            path: ["customers/%0s/token", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::TokenCreateResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
