# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::WebhooksTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.webhooks.create

    assert_pattern do
      response => Unit::Models::WebhookCreateResponse
    end
  end

  def test_retrieve
    response = @unit.webhooks.retrieve("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookRetrieveResponse
    end
  end

  def test_update
    response = @unit.webhooks.update("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookUpdateResponse
    end
  end

  def test_list
    response = @unit.webhooks.list

    assert_pattern do
      response => Unit::Models::WebhookListResponse
    end
  end

  def test_disable
    response = @unit.webhooks.disable("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookDisableResponse
    end
  end

  def test_enable
    response = @unit.webhooks.enable("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookEnableResponse
    end
  end
end
