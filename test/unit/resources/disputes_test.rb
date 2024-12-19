# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::DisputesTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @hao_4.disputes.retrieve("disputeId")

    assert_pattern do
      response => Unit::Models::DisputeRetrieveResponse
    end
  end

  def test_list
    response = @hao_4.disputes.list

    assert_pattern do
      response => -> do
        Unit::ArrayOf[Unit::Models::DisputeListResponseItem] === _1
      end
    end
  end
end
