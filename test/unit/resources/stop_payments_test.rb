# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::StopPaymentsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.stop_payments.create("stopPaymentId", data: {})

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end

  def test_retrieve
    response = @unit.stop_payments.retrieve("stopPaymentId")

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end

  def test_list
    response = @unit.stop_payments.list

    assert_pattern do
      response => Unit::Models::StopPaymentList
    end
  end

  def test_disable
    response = @unit.stop_payments.disable("stopPaymentId")

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end
end
