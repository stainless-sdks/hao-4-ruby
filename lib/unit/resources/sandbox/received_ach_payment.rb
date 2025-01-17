# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class ReceivedACHPayment
        # Create Incoming ACH Payment Simulation via API
        #
        # @param params [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse]
        #
        def create(params = {}, opts = {})
          parsed = Unit::Models::Sandbox::ReceivedACHPaymentCreateParams.dump(params)
          req = {
            method: :post,
            path: "sandbox/received-ach-payment",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse
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
