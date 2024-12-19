# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::UsersTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end
end
