# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::AuthorizationRequestsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.authorization_requests.retrieve("authorizationId")

    assert_pattern do
      response => Unit::Models::AuthorizationRequestRetrieveResponse
    end
  end

  def test_list
    response = @unit.authorization_requests.list

    assert_pattern do
      response => Unit::Models::AuthorizationRequestListResponse
    end
  end

  def test_approve
    response = @unit.authorization_requests.approve("authorizationId")

    assert_pattern do
      response => Unit::Models::AuthorizationRequestApproveResponse
    end
  end

  def test_decline
    response = @unit.authorization_requests.decline("authorizationId")

    assert_pattern do
      response => Unit::Models::AuthorizationRequestDeclineResponse
    end
  end
end
