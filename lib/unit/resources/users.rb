# frozen_string_literal: true

module Unit
  module Resources
    class Users
      # @return [Unit::Resources::Users::APITokens]
      attr_reader :api_tokens

      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
        @api_tokens = Unit::Resources::Users::APITokens.new(client: client)
      end
    end
  end
end
