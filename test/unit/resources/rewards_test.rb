# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::RewardsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.rewards.create

    assert_pattern do
      response => Unit::Models::RewardCreateResponse
    end
  end

  def test_retrieve
    response = @unit.rewards.retrieve("rewardId")

    assert_pattern do
      response => Unit::Models::RewardRetrieveResponse
    end
  end

  def test_list
    response = @unit.rewards.list

    assert_pattern do
      response => Unit::Models::RewardListResponse
    end
  end
end
