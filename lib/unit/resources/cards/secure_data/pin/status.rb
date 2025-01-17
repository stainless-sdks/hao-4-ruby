# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      class SecureData
        class Pin
          class Status
            # Get Card PIN Status via API
            #
            # @param card_id [String] ID of the card to get PIN status
            #
            # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
            #
            # @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse]
            #
            def retrieve(card_id, opts = {})
              req = {
                method: :get,
                path: ["cards/%0s/secure-data/pin/status", card_id],
                headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
                model: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse
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
  end
end
