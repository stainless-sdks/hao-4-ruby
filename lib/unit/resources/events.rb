# frozen_string_literal: true

module Unit
  module Resources
    class Events
      # Get an Event from API
      #
      # @param event_id [String] ID of the event to get
      #
      # @param params [Unit::Models::EventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::EventRetrieveResponse]
      #
      def retrieve(event_id, params = {})
        @client.request(
          method: :get,
          path: ["events/%0s", event_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get Events List from API
      #
      # @param params [Unit::Models::EventListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::EventListParams::Filter] :filter
      #
      #   @option params [Unit::Models::EventListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::EventListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "events",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventListResponse,
          options: options
        )
      end

      # Fire an Event via API
      #
      # @param event_id [String] ID of the event to fire
      #
      # @param params [Unit::Models::EventFireParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::EventFireResponse]
      #
      def fire(event_id, params = {})
        @client.request(
          method: :post,
          path: ["events/%0s", event_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventFireResponse,
          options: params[:request_options]
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
