# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class AtmDeposits
        # @param client [Unit::Client]
        def initialize(client:)
          @client = client
        end

        # Create Atm Deposit Simulation via API
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::Sandbox::AtmDepositCreateParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::Sandbox::AtmDepositCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Sandbox::AtmDepositCreateResponse]
        def create(params = {}, opts = {})
          parsed = Unit::Models::Sandbox::AtmDepositCreateParams.dump(params)
          req = {
            method: :post,
            path: "sandbox/atm-deposits",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::AtmDepositCreateResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
