# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Customers::AuthorizedUsersTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.customers.authorized_users.create("customerId")

    assert_pattern do
      response => Unit::Models::Customers::AuthorizedUserCreateResponse
    end
  end

  def test_delete
    response = @unit.customers.authorized_users.delete("customerId")

    assert_pattern do
      response => Unit::Models::Customers::AuthorizedUserDeleteResponse
    end
  end
end
