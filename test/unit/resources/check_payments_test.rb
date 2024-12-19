# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CheckPaymentsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.check_payments.create(
      data: {
        "attributes" => {
          "amount" => 1,
          "counterparty" => {
            "address" => {
              "city" => "x",
              "country" => "country",
              "postalCode" => "postalCode",
              "state" => "state",
              "street" => "x"
            },
            "name" => "name"
          },
          "description" => "x",
          "idempotencyKey" => "x"
        },
        "relationships" => {
          "account" => {"data" => {"id" => "id", "type" => "account"}},
          "customer" => {"data" => {"id" => "id", "type" => "customer"}}
        },
        "type" => "checkPayment"
      }
    )

    assert_pattern do
      response => Unit::Models::CheckPaymentCreateResponse
    end
  end

  def test_retrieve
    response = @unit.check_payments.retrieve("checkPaymentId")

    assert_pattern do
      response => Unit::Models::CheckPaymentRetrieveResponse
    end
  end

  def test_list
    response = @unit.check_payments.list

    assert_pattern do
      response => Unit::Models::CheckPaymentListResponse
    end
  end

  def test_approve
    response = @unit.check_payments.approve("checkPaymentId")

    assert_pattern do
      response => Unit::Models::CheckPaymentApproveResponse
    end
  end

  def test_back
    response = @unit.check_payments.back("checkPaymentId")

    assert_pattern do
      response => Unit::Unknown
    end
  end

  def test_cancel
    response = @unit.check_payments.cancel("checkPaymentId")

    assert_pattern do
      response => Unit::Models::CheckPaymentCancelResponse
    end
  end

  def test_front
    response = @unit.check_payments.front("checkPaymentId")

    assert_pattern do
      response => Unit::Unknown
    end
  end

  def test_return_
    response = @unit.check_payments.return_("checkPaymentId")

    assert_pattern do
      response => Unit::Models::CheckPaymentReturnResponse
    end
  end
end
