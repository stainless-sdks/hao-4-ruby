# frozen_string_literal: true

module Unit
  module Resources
    class CashDeposits
      # @return [Unit::Resources::CashDeposits::Barcodes]
      attr_reader :barcodes

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @barcodes = Unit::Resources::CashDeposits::Barcodes.new(client: client)
      end
    end
  end
end
