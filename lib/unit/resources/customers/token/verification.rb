# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      class Token
        class Verification
          # @param client [Unit::Client]
          #
          def initialize(client:)
            @client = client
          end

          # Create a Customer Token Verification via API
          #
          # @param customer_id [String] ID of the customer to create token for
          #
          # @param params [Hash{Symbol => Object}, Unit::Models::Customers::Token::VerificationCreateParams] Attributes to send in this request.
          #
          #   @option params [Unit::Models::Customers::Token::VerificationCreateParams::Data] :data
          #
          # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Unit::Models::Customers::Token::VerificationCreateResponse]
          #
          def create(customer_id, params = {}, opts = {})
            parsed = Unit::Models::Customers::Token::VerificationCreateParams.dump(params)
            req = {
              method: :post,
              path: ["customers/%0s/token/verification", customer_id],
              headers: {
                "Content-Type" => "application/vnd.api+json",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed,
              model: Unit::Models::Customers::Token::VerificationCreateResponse
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
