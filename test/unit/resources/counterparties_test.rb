# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CounterpartiesTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.counterparties.create

    assert_pattern do
      response => Unit::Models::CounterpartyCreateResponse
    end
  end

  def test_retrieve
    response = @unit.counterparties.retrieve("counterpartyId")

    assert_pattern do
      response => Unit::Models::CounterpartyRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.counterparties.update(
      "counterpartyId",
      data: {"attributes" => {}, "type" => "counterparty"}
    )

    assert_pattern do
      response => Unit::Models::CounterpartyUpdateResponse
    end
  end

  def test_list
    response = @unit.counterparties.list

    assert_pattern do
      response => Unit::Models::CounterpartyListResponse
    end
  end

  def test_delete
    response = @unit.counterparties.delete("counterpartyId")

    assert_pattern do
      response => nil
    end
  end
end
