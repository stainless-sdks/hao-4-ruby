# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      class Cards
        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Activate Card Simulation via API
        #
        # @param card_id [String] ID of the card to activate
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        #
        def activate(card_id, opts = {})
          req = {
            method: :post,
            path: ["sandbox/cards/%0s/activate", card_id],
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
