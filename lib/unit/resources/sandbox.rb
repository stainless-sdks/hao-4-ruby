# frozen_string_literal: true

module Unit
  module Resources
    class Sandbox
      # @return [Unit::Resources::Sandbox::AtmDeposits]
      attr_reader :atm_deposits

      # @return [Unit::Resources::Sandbox::Cards]
      attr_reader :cards

      # @return [Unit::Resources::Sandbox::ReceivedACHPayment]
      attr_reader :received_ach_payment

      # @return [Unit::Resources::Sandbox::ReceivedPayments]
      attr_reader :received_payments

      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
        @atm_deposits = Unit::Resources::Sandbox::AtmDeposits.new(client: client)
        @cards = Unit::Resources::Sandbox::Cards.new(client: client)
        @received_ach_payment = Unit::Resources::Sandbox::ReceivedACHPayment.new(client: client)
        @received_payments = Unit::Resources::Sandbox::ReceivedPayments.new(client: client)
      end
    end
  end
end
