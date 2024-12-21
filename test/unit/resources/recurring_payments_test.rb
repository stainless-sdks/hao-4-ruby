# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::RecurringPaymentsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.recurring_payments.create(
      data: {
        "attributes" => {
          "amount" => 1,
          "description" => "x",
          "schedule" => {"interval" => "Weekly", "nextScheduledAction" => "2019-12-27"}
        },
        "relationships" => {
          "account" => {"data" => {"id" => "id", "type" => "account"}},
          "counterparty" => {"data" => {"id" => "id", "type" => "counterparty"}}
        },
        "type" => "recurringCreditAchPayment"
      }
    )

    assert_pattern do
      response => Unit::Models::RecurringPaymentCreateResponse
    end
  end

  def test_retrieve
    response = @unit.recurring_payments.retrieve("paymentId")

    assert_pattern do
      response => Unit::Models::RecurringPaymentRetrieveResponse
    end
  end

  def test_list
    response = @unit.recurring_payments.list

    assert_pattern do
      response => Unit::Models::RecurringPaymentListResponse
    end
  end

  def test_disable_required_params
    response = @unit.recurring_payments.disable("paymentId", body: {})

    assert_pattern do
      response => Unit::Models::RecurringPaymentDisableResponse
    end
  end

  def test_enable_required_params
    response = @unit.recurring_payments.enable("paymentId", body: {})

    assert_pattern do
      response => Unit::Models::RecurringPaymentEnableResponse
    end
  end
end
