# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class Cards
        # Activate Card Simulation via API
        #
        # @param card_id [String] ID of the card to activate
        #
        # @param params [Unit::Models::Sandbox::CardActivateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [nil]
        #
        def activate(card_id, params = {})
          @client.request(
            method: :post,
            path: ["sandbox/cards/%0s/activate", card_id],
            model: NilClass,
            options: params[:request_options]
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
