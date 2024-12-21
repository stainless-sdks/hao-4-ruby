# frozen_string_literal: true

require_relative "../../../test_helper"

class Unit::Test::Resources::Applications::Documents::BackTest < Minitest::Test
  def setup
    @unit = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_upload_required_params
    skip("skipped: multipart requests aren't supported right now")

    response = @unit.applications.documents.back.upload(
      "documentId",
      application_id: "applicationId",
      file: [StringIO.new("some file contents"), {filename: "file.txt"}],
      file_type: "application/pdf"
    )

    assert_pattern do
      response => Unit::Models::Applications::Documents::BackUploadResponse
    end
  end
end
