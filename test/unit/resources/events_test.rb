# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::EventsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @hao_4.events.retrieve("eventId")

    assert_pattern do
      response => Unit::Models::EventRetrieveResponse
    end
  end

  def test_list
    response = @hao_4.events.list

    assert_pattern do
      response => Unit::Models::EventListResponse
    end
  end

  def test_fire
    response = @hao_4.events.fire("eventId")

    assert_pattern do
      response => Unit::Models::EventFireResponse
    end
  end
end
