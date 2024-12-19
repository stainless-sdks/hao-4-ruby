# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::WebhooksTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.webhooks.create

    assert_pattern do
      response => Unit::Models::WebhookCreateResponse
    end
  end

  def test_retrieve
    response = @hao_4.webhooks.retrieve("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookRetrieveResponse
    end
  end

  def test_update
    response = @hao_4.webhooks.update("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookUpdateResponse
    end
  end

  def test_list
    response = @hao_4.webhooks.list

    assert_pattern do
      response => Unit::Models::WebhookListResponse
    end
  end

  def test_disable
    response = @hao_4.webhooks.disable("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookDisableResponse
    end
  end

  def test_enable
    response = @hao_4.webhooks.enable("webhookId")

    assert_pattern do
      response => Unit::Models::WebhookEnableResponse
    end
  end
end
