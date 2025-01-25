# frozen_string_literal: true

module Unit
  module Resources
    class Disputes
      # Get a Dispute from API
      #
      # @param dispute_id [String] ID of the dispute to get
      #
      # @param params [Unit::Models::DisputeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::DisputeRetrieveResponse]
      #
      def retrieve(dispute_id, params = {})
        @client.request(
          method: :get,
          path: ["disputes/%0s", dispute_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::DisputeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get List Disputes from API
      #
      # @param params [Unit::Models::DisputeListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::DisputeListParams::Filter] :filter
      #
      #   @option params [Unit::Models::DisputeListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Array<Unit::Models::DisputeListResponseItem>]
      #
      def list(params = {})
        parsed, options = Unit::Models::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "disputes",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::ArrayOf[Unit::Models::DisputeListResponseItem],
          options: options
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
