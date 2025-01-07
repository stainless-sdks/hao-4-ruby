# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      class SecureData
        # @return [Unit::Resources::Cards::SecureData::Pin]
        attr_reader :pin

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @pin = Unit::Resources::Cards::SecureData::Pin.new(client: client)
        end
      end
    end
  end
end
