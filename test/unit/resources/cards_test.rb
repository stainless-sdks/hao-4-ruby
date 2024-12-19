# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::CardsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.cards.create

    assert_pattern do
      response => Unit::Models::CardCreateResponse
    end
  end

  def test_retrieve
    response = @hao_4.cards.retrieve("cardId")

    assert_pattern do
      response => Unit::Models::CardRetrieveResponse
    end
  end

  def test_update_required_params
    response = @hao_4.cards.update("cardId", data: {"attributes" => {}, "type" => "individualDebitCard"})

    assert_pattern do
      response => Unit::Models::CardUpdateResponse
    end
  end

  def test_list
    response = @hao_4.cards.list

    assert_pattern do
      response => Unit::Models::CardListResponse
    end
  end

  def test_close
    response = @hao_4.cards.close("cardId")

    assert_pattern do
      response => Unit::Models::CardCloseResponse
    end
  end

  def test_freeze_
    response = @hao_4.cards.freeze_("cardId")

    assert_pattern do
      response => Unit::Models::CardFreezeResponse
    end
  end

  def test_replace_required_params
    response = @hao_4.cards.replace(
      "cardId",
      data: {
        "attributes" => {
          "shippingAddress" => {
            "city" => "x",
            "country" => "country",
            "postalCode" => "postalCode",
            "state" => "state",
            "street" => "x"
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
    response = @hao_4.cards.report_lost("cardId")

    assert_pattern do
      response => Unit::Models::CardReportLostResponse
    end
  end

  def test_report_stolen
    response = @hao_4.cards.report_stolen("cardId")

    assert_pattern do
      response => Unit::Models::CardReportStolenResponse
    end
  end

  def test_unfreeze
    response = @hao_4.cards.unfreeze("cardId")

    assert_pattern do
      response => Unit::Models::CardUnfreezeResponse
    end
  end
end
