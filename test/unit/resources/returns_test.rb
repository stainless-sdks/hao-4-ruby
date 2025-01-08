# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::ReturnsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_return__required_params
    response = @unit.returns.return_(
      "transactionId",
      data: {
        "attributes" => {"reason" => "InsufficientFunds"},
        "relationships" => {"account" => {"data" => {"id" => "469", "type" => "account"}}},
        "type" => "atmTransaction"
      }
    )

    assert_pattern do
      response => Unit::Models::ReturnReturnResponse
    end
  end
end
