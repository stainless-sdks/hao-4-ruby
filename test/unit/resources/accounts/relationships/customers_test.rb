# frozen_string_literal: true

require_relative "../../../test_helper"

class Unit::Test::Resources::Accounts::Relationships::CustomersTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_add_required_params
    response = @hao_4.accounts.relationships.customers.add("accountId", data: [{}])

    assert_pattern do
      response => Unit::Models::Accounts::Relationships::CustomerAddResponse
    end
  end

  def test_remove_required_params
    response = @hao_4.accounts.relationships.customers.remove("accountId", data: [{}])

    assert_pattern do
      response => Unit::Models::Accounts::Relationships::CustomerRemoveResponse
    end
  end
end
