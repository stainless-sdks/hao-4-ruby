# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::CashDeposits::BarcodesTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.cash_deposits.barcodes.create(
      data: {"attributes" => {"storeId" => "storeId"}, "relationships" => {}, "type" => "cashDepositBarcode"}
    )

    assert_pattern do
      response => Unit::Models::CashDeposits::BarcodeCreateResponse
    end
  end
end
