# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class AtmDeposits
        # Create Atm Deposit Simulation via API
        #
        # @param params [Unit::Models::Sandbox::AtmDepositCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::Sandbox::AtmDepositCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Sandbox::AtmDepositCreateResponse]
        #
        def create(params)
          parsed, options = Unit::Models::Sandbox::AtmDepositCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "sandbox/atm-deposits",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::Sandbox::AtmDepositCreateResponse,
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
