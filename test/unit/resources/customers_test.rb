# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CustomersTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.customers.retrieve("customerId")

    assert_pattern do
      response => Unit::Models::CustomerRetrieveResponse
    end
  end

  def test_update
    response = @unit.customers.update("customerId")

    assert_pattern do
      response => Unit::Models::CustomerUpdateResponse
    end
  end

  def test_list
    response = @unit.customers.list

    assert_pattern do
      response => Unit::Models::CustomerListResponse
    end
  end

  def test_archive
    response = @unit.customers.archive("customerId")

    assert_pattern do
      response => Unit::Models::CustomerArchiveResponse
    end
  end
end
