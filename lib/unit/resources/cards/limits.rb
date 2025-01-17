# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      class Limits
        # Get a Card Limits from API
        #
        # @param card_id [String] ID of the card to get
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Cards::LimitRetrieveResponse]
        #
        def retrieve(card_id, opts = {})
          req = {
            method: :get,
            path: ["cards/%0s/limits", card_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Cards::LimitRetrieveResponse
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
