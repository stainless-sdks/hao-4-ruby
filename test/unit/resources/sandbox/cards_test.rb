# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Sandbox::CardsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_activate
    response = @hao_4.sandbox.cards.activate("cardId")

    assert_pattern do
      response => nil
    end
  end
end
