# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::ApplicationFormsTest < Minitest::Test
  def before_all
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.application_forms.create

    assert_pattern do
      response => Unit::Models::ApplicationFormCreateResponse
    end
  end

  def test_retrieve
    response = @unit.application_forms.retrieve("applicationFormId")

    assert_pattern do
      response => Unit::Models::ApplicationFormRetrieveResponse
    end
  end

  def test_list
    response = @unit.application_forms.list

    assert_pattern do
      response => Unit::Models::ApplicationFormListResponse
    end
  end
end
