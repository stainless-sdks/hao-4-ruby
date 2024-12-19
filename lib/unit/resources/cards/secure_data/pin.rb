# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      class SecureData
        class Pin
          # @return [Unit::Resources::Cards::SecureData::Pin::Status]
          attr_reader :status

          # @param client [Unit::Client]
          def initialize(client:)
            @client = client
            @status = Unit::Resources::Cards::SecureData::Pin::Status.new(client: client)
          end
        end
      end
    end
  end
end
