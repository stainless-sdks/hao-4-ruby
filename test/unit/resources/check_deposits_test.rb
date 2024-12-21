# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CheckDepositsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.check_deposits.create

    assert_pattern do
      response => Unit::Models::CheckDepositCreateResponse
    end
  end

  def test_retrieve
    response = @unit.check_deposits.retrieve("checkDepositId")

    assert_pattern do
      response => Unit::Models::CheckDepositRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.check_deposits.update(
      "checkDepositId",
      data: {"attributes" => {}, "type" => "checkDeposit"}
    )

    assert_pattern do
      response => Unit::Models::CheckDepositUpdateResponse
    end
  end

  def test_list
    response = @unit.check_deposits.list

    assert_pattern do
      response => Unit::Models::CheckDepositListResponse
    end
  end

  def test_back
    response = @unit.check_deposits.back("checkDepositId")

    assert_pattern do
      response => Unit::Models::CheckDepositBackResponse
    end
  end

  def test_confirm_required_params
    response = @unit.check_deposits.confirm("checkDepositId", data: {"type" => "type"})

    assert_pattern do
      response => Unit::Models::CheckDepositConfirmResponse
    end
  end

  def test_front
    response = @unit.check_deposits.front("checkDepositId")

    assert_pattern do
      response => Unit::Models::CheckDepositFrontResponse
    end
  end
end
