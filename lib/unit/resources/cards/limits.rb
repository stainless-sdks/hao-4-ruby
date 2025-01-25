# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      class Limits
        # Get a Card Limits from API
        #
        # @param card_id [String] ID of the card to get
        #
        # @param params [Unit::Models::Cards::LimitRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Cards::LimitRetrieveResponse]
        #
        def retrieve(card_id, params = {})
          @client.request(
            method: :get,
            path: ["cards/%0s/limits", card_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Cards::LimitRetrieveResponse,
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
