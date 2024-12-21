# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::RepaymentsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.repayments.create(
      data: {
        "attributes" => {"amount" => 0, "description" => "description"},
        "relationships" => {
          "account" => {"data" => {"id" => "id", "type" => "account"}},
          "counterpartyAccount" => {"data" => {"id" => "id", "type" => "account"}},
          "creditAccount" => {"data" => {"id" => "id", "type" => "creditAccount"}}
        },
        "type" => "bookRepayment"
      }
    )

    assert_pattern do
      response => Unit::Models::RepaymentCreateResponse
    end
  end

  def test_retrieve
    response = @unit.repayments.retrieve("repaymentId")

    assert_pattern do
      response => Unit::Models::RepaymentRetrieveResponse
    end
  end

  def test_list
    response = @unit.repayments.list

    assert_pattern do
      response => Unit::Models::RepaymentListResponse
    end
  end
end
