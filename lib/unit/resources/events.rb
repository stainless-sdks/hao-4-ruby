# frozen_string_literal: true

module Unit
  module Resources
    class Events
      # Get an Event from API
      #
      # @param event_id [String] ID of the event to get
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::EventRetrieveResponse]
      #
      def retrieve(event_id, opts = {})
        req = {
          method: :get,
          path: ["events/%0s", event_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get Events List from API
      #
      # @param params [Unit::Models::EventListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::EventListParams::Filter] :filter
      #
      #   @option params [Unit::Models::EventListParams::Page] :page Parameters for paginated list requests
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::EventListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::EventListParams.dump(params)
        req = {
          method: :get,
          path: "events",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventListResponse
        }
        @client.request(req, opts)
      end

      # Fire an Event via API
      #
      # @param event_id [String] ID of the event to fire
      #
      # @param opts [Hash{Symbol=>Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::EventFireResponse]
      #
      def fire(event_id, opts = {})
        req = {
          method: :post,
          path: ["events/%0s", event_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::EventFireResponse
        }
        @client.request(req, opts)
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
