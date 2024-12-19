# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::BeneficialOwnersTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_update_required_params
    response = @hao_4.beneficial_owners.update(
      "beneficialOwnerId",
      data: {
        "attributes" => {},
        "relationships" => {
          "application" => {
            "data" => {
              "id" => "id",
              "type" => "businessApplication"
            }
          }
        },
        "type" => "beneficialOwner"
      }
    )

    assert_pattern do
      response => Unit::Models::BeneficialOwnerUpdateResponse
    end
  end
end
