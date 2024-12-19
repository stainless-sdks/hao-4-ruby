# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::PaymentsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.payments.create

    assert_pattern do
      response => Unit::Models::PaymentCreateResponse
    end
  end

  def test_retrieve
    response = @hao_4.payments.retrieve("paymentId")

    assert_pattern do
      response => Unit::Models::PaymentRetrieveResponse
    end
  end

  def test_update_required_params
    response = @hao_4.payments.update("paymentId", data: {"attributes" => {}, "type" => "achPayment"})

    assert_pattern do
      response => Unit::Models::PaymentUpdateResponse
    end
  end

  def test_list
    response = @hao_4.payments.list

    assert_pattern do
      response => Unit::Models::PaymentListResponse
    end
  end

  def test_cancel_required_params
    response = @hao_4.payments.cancel("paymentId", body: {})

    assert_pattern do
      response => Unit::Models::PaymentCancelResponse
    end
  end
end
