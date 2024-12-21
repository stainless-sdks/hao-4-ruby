# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::PaymentsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.payments.create

    assert_pattern do
      response => Unit::Models::PaymentCreateResponse
    end
  end

  def test_retrieve
    response = @unit.payments.retrieve("paymentId")

    assert_pattern do
      response => Unit::Models::PaymentRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.payments.update("paymentId", data: {"attributes" => {}, "type" => "achPayment"})

    assert_pattern do
      response => Unit::Models::PaymentUpdateResponse
    end
  end

  def test_list
    response = @unit.payments.list

    assert_pattern do
      response => Unit::Models::PaymentListResponse
    end
  end

  def test_cancel_required_params
    response = @unit.payments.cancel("paymentId", body: {})

    assert_pattern do
      response => Unit::Models::PaymentCancelResponse
    end
  end
end
