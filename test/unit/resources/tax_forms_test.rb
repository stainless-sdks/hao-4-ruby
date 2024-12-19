# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::TaxFormsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_retrieve
    response = @hao_4.tax_forms.retrieve("taxFormId")

    assert_pattern do
      response => Unit::Models::TaxFormRetrieveResponse
    end
  end

  def test_list
    response = @hao_4.tax_forms.list

    assert_pattern do
      response => Unit::Models::TaxFormListResponse
    end
  end

  def test_pdf
    response = @hao_4.tax_forms.pdf("taxFormId")

    assert_pattern do
      response => Unit::Unknown
    end
  end
end
