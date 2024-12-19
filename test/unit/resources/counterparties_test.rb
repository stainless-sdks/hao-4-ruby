# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CounterpartiesTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.counterparties.create

    assert_pattern do
      response => Unit::Models::CounterpartyCreateResponse
    end
  end

  def test_retrieve
    response = @hao_4.counterparties.retrieve("counterpartyId")

    assert_pattern do
      response => Unit::Models::CounterpartyRetrieveResponse
    end
  end

  def test_update_required_params
    response = @hao_4.counterparties.update(
      "counterpartyId",
      data: {"attributes" => {}, "type" => "counterparty"}
    )

    assert_pattern do
      response => Unit::Models::CounterpartyUpdateResponse
    end
  end

  def test_list
    response = @hao_4.counterparties.list

    assert_pattern do
      response => Unit::Models::CounterpartyListResponse
    end
  end

  def test_delete
    response = @hao_4.counterparties.delete("counterpartyId")

    assert_pattern do
      response => nil
    end
  end
end
