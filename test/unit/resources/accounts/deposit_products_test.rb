# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Accounts::DepositProductsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @unit.accounts.deposit_products.list("accountId")

    assert_pattern do
      response => Unit::Models::Accounts::DepositProductListResponse
    end
  end
end
