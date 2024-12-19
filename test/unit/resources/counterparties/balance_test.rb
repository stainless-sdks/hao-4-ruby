# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Counterparties::BalanceTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.counterparties.balance.retrieve("counterpartyId")

    assert_pattern do
      response => Unit::Models::Counterparties::BalanceRetrieveResponse
    end
  end
end
