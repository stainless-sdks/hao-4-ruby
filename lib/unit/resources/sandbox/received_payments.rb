# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class ReceivedPayments
        # @param client [Unit::Client]
        def initialize(client:)
          @client = client
        end

        # Create ACH Received Payment Transaction Simulation via API
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Sandbox::ReceivedPaymentCreateParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Sandbox::ReceivedPaymentCreateResponse]
        def create(params = {}, opts = {})
          parsed = Unit::Models::Sandbox::ReceivedPaymentCreateParams.dump(params)
          req = {
            method: :post,
            path: "sandbox/received-payments",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::ReceivedPaymentCreateResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
