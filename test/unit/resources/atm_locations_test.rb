# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::AtmLocationsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @hao_4.atm_locations.list

    assert_pattern do
      response => -> do
        Unit::ArrayOf[Unit::Models::AtmLocationListResponseItem] === _1
      end
    end
  end
end
