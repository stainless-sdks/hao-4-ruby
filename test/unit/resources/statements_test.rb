# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::StatementsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @unit.statements.list

    assert_pattern do
      response => Unit::Models::StatementListResponse
    end
  end
end
