# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CardsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.cards.create

    assert_pattern do
      response => Unit::Models::CardCreateResponse
    end
  end

  def test_retrieve
    response = @unit.cards.retrieve("cardId")

    assert_pattern do
      response => Unit::Models::CardRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.cards.update("cardId", data: {"attributes" => {}, "type" => "individualDebitCard"})

    assert_pattern do
      response => Unit::Models::CardUpdateResponse
    end
  end

  def test_list
    response = @unit.cards.list

    assert_pattern do
      response => Unit::Models::CardListResponse
    end
  end

  def test_close
    response = @unit.cards.close("cardId")

    assert_pattern do
      response => Unit::Models::CardCloseResponse
    end
  end

  def test_freeze_
    response = @unit.cards.freeze_("cardId")

    assert_pattern do
      response => Unit::Models::CardFreezeResponse
    end
  end

  def test_replace_required_params
    response = @unit.cards.replace(
      "cardId",
      data: {
        "attributes" => {
          "shippingAddress" => {
            "city" => "city",
            "country" => "country",
            "postalCode" => "21029-1360",
            "state" => "state",
            "street" => "street"
          }
        },
        "type" => "replaceCard"
      }
    )

    assert_pattern do
      response => Unit::Models::CardReplaceResponse
    end
  end

  def test_report_lost
    response = @unit.cards.report_lost("cardId")

    assert_pattern do
      response => Unit::Models::CardReportLostResponse
    end
  end

  def test_report_stolen
    response = @unit.cards.report_stolen("cardId")

    assert_pattern do
      response => Unit::Models::CardReportStolenResponse
    end
  end

  def test_unfreeze
    response = @unit.cards.unfreeze("cardId")

    assert_pattern do
      response => Unit::Models::CardUnfreezeResponse
    end
  end
end
