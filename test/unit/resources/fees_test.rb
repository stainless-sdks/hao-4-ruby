# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::FeesTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @hao_4.fees.create(
      data: {
        "attributes" => {"amount" => 1, "description" => "description"},
        "relationships" => {"account" => {"data" => {"id" => "id", "type" => "account"}}},
        "type" => "fee"
      }
    )

    assert_pattern do
      response => Unit::Models::FeeCreateResponse
    end
  end

  def test_reverse_required_params
    response = @hao_4.fees.reverse(
      data: {"attributes" => {"description" => "description"}, "relationships" => {}, "type" => "feeReversal"}
    )

    assert_pattern do
      response => Unit::Models::FeeReverseResponse
    end
  end
end
