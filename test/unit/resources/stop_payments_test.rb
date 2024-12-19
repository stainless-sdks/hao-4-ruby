# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::StopPaymentsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @hao_4.stop_payments.create("stopPaymentId", data: {})

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end

  def test_retrieve
    response = @hao_4.stop_payments.retrieve("stopPaymentId")

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end

  def test_list
    response = @hao_4.stop_payments.list

    assert_pattern do
      response => Unit::Models::StopPaymentList
    end
  end

  def test_disable
    response = @hao_4.stop_payments.disable("stopPaymentId")

    assert_pattern do
      response => Unit::Models::StopPayment
    end
  end
end
