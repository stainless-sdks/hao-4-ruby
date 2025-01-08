# frozen_string_literal: true

module Unit
  module Resources
    class Disputes
      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Get a Dispute from API
      #
      # @param dispute_id [String] ID of the dispute to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::DisputeRetrieveResponse]
      #
      def retrieve(dispute_id, opts = {})
        req = {
          method: :get,
          path: ["disputes/%0s", dispute_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::DisputeRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get List Disputes from API
      #
      # @param params [Unit::Models::DisputeListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::DisputeListParams::Filter] :filter
      #
      #   @option params [Unit::Models::DisputeListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Array<Unit::Models::DisputeListResponseItem>]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::DisputeListParams.dump(params)
        req = {
          method: :get,
          path: "disputes",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::ArrayOf[Unit::Models::DisputeListResponseItem]
        }
        @client.request(req, opts)
      end
    end
  end
end
