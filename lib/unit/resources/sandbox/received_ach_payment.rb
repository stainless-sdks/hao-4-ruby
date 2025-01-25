# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class ReceivedACHPayment
        # Create Incoming ACH Payment Simulation via API
        #
        # @param params [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse]
        #
        def create(params)
          parsed, options = Unit::Models::Sandbox::ReceivedACHPaymentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/received-ach-payment",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse,
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
