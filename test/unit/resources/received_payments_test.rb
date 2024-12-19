# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::ReceivedPaymentsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.received_payments.retrieve("paymentId")

    assert_pattern do
      response => Unit::Models::ReceivedPaymentRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.received_payments.update(
      "paymentId",
      data: {"attributes" => {}, "type" => "achReceivedPayment"}
    )

    assert_pattern do
      response => Unit::Models::ReceivedPaymentUpdateResponse
    end
  end

  def test_list
    response = @unit.received_payments.list

    assert_pattern do
      response => Unit::Models::ReceivedPaymentListResponse
    end
  end

  def test_advance
    response = @unit.received_payments.advance("paymentId")

    assert_pattern do
      response => Unit::Models::ReceivedPaymentAdvanceResponse
    end
  end

  def test_reprocess
    response = @unit.received_payments.reprocess("paymentId")

    assert_pattern do
      response => Unit::Models::ReceivedPaymentReprocessResponse
    end
  end
end
