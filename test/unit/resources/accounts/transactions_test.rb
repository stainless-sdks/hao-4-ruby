# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Accounts::TransactionsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve_required_params
    response = @hao_4.accounts.transactions.retrieve("transactionId", account_id: "accountId")

    assert_pattern do
      response => Unit::Models::Accounts::TransactionRetrieveResponse
    end
  end

  def test_update_required_params
    response = @hao_4.accounts.transactions.update(
      "transactionId",
      account_id: "accountId",
      data: {"attributes" => {"tags" => {"foo" => "x"}}, "type" => "transaction"}
    )

    assert_pattern do
      response => Unit::Models::Accounts::TransactionUpdateResponse
    end
  end
end
