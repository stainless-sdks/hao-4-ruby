# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::TaxFormsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @unit.tax_forms.retrieve("taxFormId")

    assert_pattern do
      response => Unit::Models::TaxFormRetrieveResponse
    end
  end

  def test_list
    response = @unit.tax_forms.list

    assert_pattern do
      response => Unit::Models::TaxFormListResponse
    end
  end

  def test_pdf
    response = @unit.tax_forms.pdf("taxFormId")

    assert_pattern do
      response => Unit::Unknown
    end
  end
end
