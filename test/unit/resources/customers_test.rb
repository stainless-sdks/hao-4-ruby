# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CustomersTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @hao_4.customers.retrieve("customerId")

    assert_pattern do
      response => Unit::Models::CustomerRetrieveResponse
    end
  end

  def test_update
    response = @hao_4.customers.update("customerId")

    assert_pattern do
      response => Unit::Models::CustomerUpdateResponse
    end
  end

  def test_list
    response = @hao_4.customers.list

    assert_pattern do
      response => Unit::Models::CustomerListResponse
    end
  end

  def test_archive
    response = @hao_4.customers.archive("customerId")

    assert_pattern do
      response => Unit::Models::CustomerArchiveResponse
    end
  end
end
