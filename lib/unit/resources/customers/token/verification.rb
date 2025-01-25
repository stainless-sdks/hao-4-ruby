# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class Token
        class Verification
          # Create a Customer Token Verification via API
          #
          # @param customer_id [String] ID of the customer to create token for
          #
          # @param params [Unit::Models::Customers::Token::VerificationCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Unit::Models::Customers::Token::VerificationCreateParams::Data] :data
          #
          #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Unit::Models::Customers::Token::VerificationCreateResponse]
          #
          def create(customer_id, params = {})
            parsed, options = Unit::Models::Customers::Token::VerificationCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["customers/%0s/token/verification", customer_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Customers::Token::VerificationCreateResponse,
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
