# frozen_string_literal: true

module Unit
  module Resources
    class Accounts
      class Relationships
        # @return [Unit::Resources::Accounts::Relationships::Customers]
        attr_reader :customers

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @customers = Unit::Resources::Accounts::Relationships::Customers.new(client: client)
        end
      end
    end
  end
end
