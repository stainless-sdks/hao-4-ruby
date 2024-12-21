# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::DisputesTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.disputes.retrieve("disputeId")

    assert_pattern do
      response => Unit::Models::DisputeRetrieveResponse
    end
  end

  def test_list
    response = @unit.disputes.list

    assert_pattern do
      response => -> do
        Unit::ArrayOf[Unit::Models::DisputeListResponseItem] === _1
      end
    end
  end
end
