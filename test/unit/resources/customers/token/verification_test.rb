# frozen_string_literal: true

require_relative "../../../test_helper"

class Unit::Test::Resources::Customers::Token::VerificationTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @hao_4.customers.token.verification.create("customerId")

    assert_pattern do
      response => Unit::Models::Customers::Token::VerificationCreateResponse
    end
  end
end
