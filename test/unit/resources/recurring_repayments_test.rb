# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::RecurringRepaymentsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.recurring_repayments.create

    assert_pattern do
      response => Unit::Models::RecurringRepaymentCreateResponse
    end
  end

  def test_retrieve
    response = @unit.recurring_repayments.retrieve("recurringRepaymentId")

    assert_pattern do
      response => Unit::Models::RecurringRepaymentRetrieveResponse
    end
  end

  def test_list
    response = @unit.recurring_repayments.list

    assert_pattern do
      response => Unit::Models::RecurringRepaymentListResponse
    end
  end

  def test_disable_required_params
    response = @unit.recurring_repayments.disable("recurringRepaymentId", body: {})

    assert_pattern do
      response => Unit::Models::RecurringRepaymentDisableResponse
    end
  end

  def test_enable_required_params
    response = @unit.recurring_repayments.enable("recurringRepaymentId", body: {})

    assert_pattern do
      response => Unit::Models::RecurringRepaymentEnableResponse
    end
  end
end
