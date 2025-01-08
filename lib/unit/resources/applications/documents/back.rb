# frozen_string_literal: true

module Unit
  module Resources
    class Applications
      class Documents
        class Back
          # @param client [Unit::Client]
          #
          def initialize(client:)
            @client = client
          end

          # Upload an application file via API - Back Side. Supports PDF, PNG and JPG files
          #
          # @param document_id [String] Path param: ID of the document to upload a file for
          #
          # @param params [Unit::Models::Applications::Documents::BackUploadParams, Hash{Symbol => Object}] Attributes to send in this request.
          #
          #   @option params [String] :application_id Path param: ID of the application to upload a file to
          #
          #   @option params [String] :file Body param:
          #
          #   @option params [Symbol, Unit::Models::Applications::Documents::BackUploadParams::FileType] :file_type Body param:
          #
          # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Unit::Models::Applications::Documents::BackUploadResponse]
          #
          def upload(document_id, params = {}, opts = {})
            parsed = Unit::Models::Applications::Documents::BackUploadParams.dump(params)
            application_id = parsed.fetch(:application_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            req = {
              method: :put,
              path: ["applications/%0s/documents/%1s/back/multipart", application_id, document_id],
              headers: {
                "Content-Type" => "multipart/form-data",
                "Accept" => "application/vnd.api+json; charset=utf-8"
              },
              body: parsed.except(:application_id),
              model: Unit::Models::Applications::Documents::BackUploadResponse
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
