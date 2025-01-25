# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class Token
        # @return [Unit::Resources::Customers::Token::Verification]
        attr_reader :verification

        # Create a Customer Token via API
        #
        # @param customer_id [String] ID of the customer to create token for
        #
        # @param params [Unit::Models::Customers::TokenCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Customers::TokenCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Customers::TokenCreateResponse]
        #
        def create(customer_id, params = {})
          parsed, options = Unit::Models::Customers::TokenCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/%0s/token", customer_id],
            headers: {
              "Content-Type" => "application/vnd.api+json",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed,
            model: Unit::Models::Customers::TokenCreateResponse,
            options: options
          )
        end

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @verification = Unit::Resources::Customers::Token::Verification.new(client: client)
        end
      end
    end
  end
end
