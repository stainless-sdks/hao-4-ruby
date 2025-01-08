# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Sandbox::AtmDepositsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.sandbox.atm_deposits.create(
      data: {
        "attributes" => {"amount" => 0, "atmName" => "atmName", "last4Digits" => "xxxx"},
        "relationships" => {"account" => {"data" => {"id" => "469", "type" => "account"}}},
        "type" => "atmTransaction"
      }
    )

    assert_pattern do
      response => Unit::Models::Sandbox::AtmDepositCreateResponse
    end
  end
end
