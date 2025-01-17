# frozen_string_literal: true

module Unit
  module Resources
    class Applications
      class Documents
        # @return [Unit::Resources::Applications::Documents::Back]
        attr_reader :back

        # Create an application document via API
        #
        # @param application_id [String] ID of the application to create a file for
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Applications::DocumentCreateResponse]
        #
        def create(application_id, opts = {})
          req = {
            method: :post,
            path: ["applications/%0s/documents", application_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Applications::DocumentCreateResponse
          }
          @client.request(req, opts)
        end

        # Get List of Documents via API
        #
        # @param application_id [String] ID of the application to get documents for
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Applications::DocumentListResponse]
        #
        def list(application_id, opts = {})
          req = {
            method: :get,
            path: ["applications/%0s/documents", application_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Applications::DocumentListResponse
          }
          @client.request(req, opts)
        end

        # Download a Document via API
        #
        # @param document_id [String] ID of the document to download
        #
        # @param params [Unit::Models::Applications::DocumentDownloadParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [String] :application_id ID of the application
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Object]
        #
        def download(document_id, params = {}, opts = {})
          parsed = Unit::Models::Applications::DocumentDownloadParams.dump(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :get,
            path: ["applications/%0s/documents/%1s/download", application_id, document_id],
            headers: {"Accept" => "application/octet-stream"},
            model: Unit::Unknown
          }
          @client.request(req, opts)
        end

        # Download a Document - Back Side via API
        #
        # @param document_id [String] ID of the document to download
        #
        # @param params [Unit::Models::Applications::DocumentDownloadBackParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [String] :application_id ID of the application
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Object]
        #
        def download_back(document_id, params = {}, opts = {})
          parsed = Unit::Models::Applications::DocumentDownloadBackParams.dump(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :get,
            path: ["applications/%0s/documents/%1s/download/back", application_id, document_id],
            headers: {"Accept" => "application/octet-stream"},
            model: Unit::Unknown
          }
          @client.request(req, opts)
        end

        # Upload an application document file. Supports PDF, PNG and JPG files
        #
        # @param document_id [String] Path param: ID of the document to upload a file for
        #
        # @param params [Unit::Models::Applications::DocumentMultipartParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [String] :application_id Path param: ID of the application to upload a file to
        #
        #   @option params [String] :file Body param:
        #
        #   @option params [Symbol, Unit::Models::Applications::DocumentMultipartParams::FileType] :file_type Body param:
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Applications::DocumentMultipartResponse]
        #
        def multipart(document_id, params = {}, opts = {})
          parsed = Unit::Models::Applications::DocumentMultipartParams.dump(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :put,
            path: ["applications/%0s/documents/%1s/multipart", application_id, document_id],
            headers: {
              "Content-Type" => "multipart/form-data",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed.except(:application_id),
            model: Unit::Models::Applications::DocumentMultipartResponse
          }
          @client.request(req, opts)
        end

        # Verify a document via API
        #
        # @param document_id [String] Path param: ID of the document to verify
        #
        # @param params [Unit::Models::Applications::DocumentVerifyParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [String] :application_id Path param: ID of the application to verify a file for
        #
        #   @option params [String] :job_id Body param:
        #
        # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::Applications::DocumentVerifyResponse]
        #
        def verify(document_id, params = {}, opts = {})
          parsed = Unit::Models::Applications::DocumentVerifyParams.dump(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          req = {
            method: :put,
            path: ["applications/%0s/documents/%1s/verify", application_id, document_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            body: parsed.except(:application_id),
            model: Unit::Models::Applications::DocumentVerifyResponse
          }
          @client.request(req, opts)
        end

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @back = Unit::Resources::Applications::Documents::Back.new(client: client)
        end
      end
    end
  end
end
