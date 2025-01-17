# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class ReceivedPayments
        # Create ACH Received Payment Transaction Simulation via API
        #
        # @param params [Unit::Models::Sandbox::ReceivedPaymentCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Sandbox::ReceivedPaymentCreateResponse]
        #
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

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
