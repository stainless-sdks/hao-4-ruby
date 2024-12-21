# frozen_string_literal: true

require_relative "../../../test_helper"

class Unit::Test::Resources::CashDeposits::Barcodes::ImageTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.cash_deposits.barcodes.image.retrieve("barcodeNumber")

    assert_pattern do
      response => Unit::Unknown
    end
  end
end
