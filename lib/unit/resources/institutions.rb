# frozen_string_literal: true

module Unit
  module Resources
    class Institutions
      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
      end

      # Get an Institution from API
      #
      # @param routing_number [String] routingNumber of the institution to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::InstitutionRetrieveResponse]
      def retrieve(routing_number, opts = {})
        req = {
          method: :get,
          path: ["institutions/%0s", routing_number],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::InstitutionRetrieveResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
