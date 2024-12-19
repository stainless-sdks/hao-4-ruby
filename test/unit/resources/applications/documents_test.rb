# frozen_string_literal: true

require_relative "../../test_helper"

class Unit::Test::Resources::Applications::DocumentsTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @unit.applications.documents.create("applicationId")

    assert_pattern do
      response => Unit::Models::Applications::DocumentCreateResponse
    end
  end

  def test_list
    response = @unit.applications.documents.list("applicationId")

    assert_pattern do
      response => Unit::Models::Applications::DocumentListResponse
    end
  end

  def test_download_required_params
    response = @unit.applications.documents.download("documentId", application_id: "applicationId")

    assert_pattern do
      response => Unit::Unknown
    end
  end

  def test_download_back_required_params
    response = @unit.applications.documents.download_back("documentId", application_id: "applicationId")

    assert_pattern do
      response => Unit::Unknown
    end
  end

  def test_multipart_required_params
    skip("skipped: multipart requests aren't supported right now")

    response = @unit.applications.documents.multipart(
      "documentId",
      application_id: "applicationId",
      file: [StringIO.new("some file contents"), {filename: "file.txt"}],
      file_type: "application/pdf"
    )

    assert_pattern do
      response => Unit::Models::Applications::DocumentMultipartResponse
    end
  end

  def test_verify_required_params
    response = @unit.applications.documents.verify("documentId", application_id: "applicationId")

    assert_pattern do
      response => Unit::Models::Applications::DocumentVerifyResponse
    end
  end
end
