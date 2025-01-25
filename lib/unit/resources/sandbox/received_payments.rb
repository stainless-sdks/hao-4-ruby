# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class ReceivedPayments
        # Create ACH Received Payment Transaction Simulation via API
        #
        # @param params [Unit::Models::Sandbox::ReceivedPaymentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Sandbox::ReceivedPaymentCreateResponse]
        #
        def create(params)
          parsed, options = Unit::Models::Sandbox::ReceivedPaymentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/received-payments",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::ReceivedPaymentCreateResponse,
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
