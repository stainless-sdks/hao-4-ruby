# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::AuthorizationsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.authorizations.retrieve("authorizationId")

    assert_pattern do
      response => Unit::Models::AuthorizationRetrieveResponse
    end
  end

  def test_list
    response = @unit.authorizations.list

    assert_pattern do
      response => Unit::Models::AuthorizationListResponse
    end
  end
end
