# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Sandbox::ReceivedPaymentsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.sandbox.received_payments.create(
      data: {
        "attributes" => {
          "amount" => 0,
          "companyName" => "companyName",
          "completionDate" => "2019-12-27",
          "description" => "description"
        },
        "relationships" => {"account" => {"data" => {"id" => "id", "type" => "account"}}},
        "type" => "achReceivedPayment"
      }
    )

    assert_pattern do
      response => Unit::Models::Sandbox::ReceivedPaymentCreateResponse
    end
  end
end
