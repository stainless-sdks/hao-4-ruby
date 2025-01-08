# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::ApplicationsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @unit.applications.create(
      data: {
        "attributes" => {
          "address" => {
            "city" => "city",
            "country" => "country",
            "postalCode" => "21029-1360",
            "state" => "state",
            "street" => "street"
          },
          "dateOfBirth" => "2019-12-27",
          "email" => "dev@stainlessapi.com",
          "fullName" => {"first" => "x", "last" => "x"},
          "phone" => {"countryCode" => "countryCode", "number" => "number"}
        },
        "type" => "individualApplication"
      }
    )

    assert_pattern do
      response => Unit::Models::ApplicationCreateResponse
    end
  end

  def test_retrieve
    response = @unit.applications.retrieve("applicationId")

    assert_pattern do
      response => Unit::Models::ApplicationRetrieveResponse
    end
  end

  def test_update_required_params
    response = @unit.applications.update(
      "applicationId",
      data: {"attributes" => {}, "type" => "businessApplication"}
    )

    assert_pattern do
      response => Unit::Models::ApplicationUpdateResponse
    end
  end

  def test_list
    response = @unit.applications.list

    assert_pattern do
      response => Unit::Models::ApplicationListResponse
    end
  end

  def test_cancel
    response = @unit.applications.cancel("applicationId")

    assert_pattern do
      response => Unit::Models::ApplicationCancelResponse
    end
  end
end
