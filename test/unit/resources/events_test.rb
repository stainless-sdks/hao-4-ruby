# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::EventsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.events.retrieve("eventId")

    assert_pattern do
      response => Unit::Models::EventRetrieveResponse
    end
  end

  def test_list
    response = @unit.events.list

    assert_pattern do
      response => Unit::Models::EventListResponse
    end
  end

  def test_fire
    response = @unit.events.fire("eventId")

    assert_pattern do
      response => Unit::Models::EventFireResponse
    end
  end
end
