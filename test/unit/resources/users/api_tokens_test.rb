# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Users::APITokensTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.users.api_tokens.create("userId")

    assert_pattern do
      response => Unit::Models::Users::APITokenCreateResponse
    end
  end

  def test_list
    response = @hao_4.users.api_tokens.list("userId")

    assert_pattern do
      response => Unit::Models::Users::APITokenListResponse
    end
  end

  def test_delete_required_params
    response = @hao_4.users.api_tokens.delete("tokenId", user_id: "userId")

    assert_pattern do
      response => Unit::Models::Users::APITokenDeleteResponse
    end
  end
end
