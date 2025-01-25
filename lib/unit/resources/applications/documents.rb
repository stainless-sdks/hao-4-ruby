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
        # @param params [Unit::Models::Applications::DocumentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Applications::DocumentCreateResponse]
        #
        def create(application_id, params = {})
          @client.request(
            method: :post,
            path: ["applications/%0s/documents", application_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Applications::DocumentCreateResponse,
            options: params[:request_options]
          )
        end

        # Get List of Documents via API
        #
        # @param application_id [String] ID of the application to get documents for
        #
        # @param params [Unit::Models::Applications::DocumentListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Applications::DocumentListResponse]
        #
        def list(application_id, params = {})
          @client.request(
            method: :get,
            path: ["applications/%0s/documents", application_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            model: Unit::Models::Applications::DocumentListResponse,
            options: params[:request_options]
          )
        end

        # Download a Document via API
        #
        # @param document_id [String] ID of the document to download
        #
        # @param params [Unit::Models::Applications::DocumentDownloadParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :application_id ID of the application
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Object]
        #
        def download(document_id, params)
          parsed, options = Unit::Models::Applications::DocumentDownloadParams.dump_request(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["applications/%0s/documents/%1s/download", application_id, document_id],
            headers: {"Accept" => "application/octet-stream"},
            model: Unit::Unknown,
            options: options
          )
        end

        # Download a Document - Back Side via API
        #
        # @param document_id [String] ID of the document to download
        #
        # @param params [Unit::Models::Applications::DocumentDownloadBackParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :application_id ID of the application
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Object]
        #
        def download_back(document_id, params)
          parsed, options = Unit::Models::Applications::DocumentDownloadBackParams.dump_request(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["applications/%0s/documents/%1s/download/back", application_id, document_id],
            headers: {"Accept" => "application/octet-stream"},
            model: Unit::Unknown,
            options: options
          )
        end

        # Upload an application document file. Supports PDF, PNG and JPG files
        #
        # @param document_id [String] Path param: ID of the document to upload a file for
        #
        # @param params [Unit::Models::Applications::DocumentMultipartParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :application_id Path param: ID of the application to upload a file to
        #
        #   @option params [String] :file Body param:
        #
        #   @option params [Symbol, Unit::Models::Applications::DocumentMultipartParams::FileType] :file_type Body param:
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Applications::DocumentMultipartResponse]
        #
        def multipart(document_id, params)
          parsed, options = Unit::Models::Applications::DocumentMultipartParams.dump_request(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :put,
            path: ["applications/%0s/documents/%1s/multipart", application_id, document_id],
            headers: {
              "Content-Type" => "multipart/form-data",
              "Accept" => "application/vnd.api+json; charset=utf-8"
            },
            body: parsed.except(:application_id),
            model: Unit::Models::Applications::DocumentMultipartResponse,
            options: options
          )
        end

        # Verify a document via API
        #
        # @param document_id [String] Path param: ID of the document to verify
        #
        # @param params [Unit::Models::Applications::DocumentVerifyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :application_id Path param: ID of the application to verify a file for
        #
        #   @option params [String] :job_id Body param:
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::Applications::DocumentVerifyResponse]
        #
        def verify(document_id, params)
          parsed, options = Unit::Models::Applications::DocumentVerifyParams.dump_request(params)
          application_id = parsed.fetch(:application_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :put,
            path: ["applications/%0s/documents/%1s/verify", application_id, document_id],
            headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
            body: parsed.except(:application_id),
            model: Unit::Models::Applications::DocumentVerifyResponse,
            options: options
          )
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
