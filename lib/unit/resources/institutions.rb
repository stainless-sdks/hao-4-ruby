# frozen_string_literal: true

module Unit
  module Resources
    class Institutions
      # Get an Institution from API
      #
      # @param routing_number [String] routingNumber of the institution to get
      #
      # @param params [Unit::Models::InstitutionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::InstitutionRetrieveResponse]
      #
      def retrieve(routing_number, params = {})
        @client.request(
          method: :get,
          path: ["institutions/%0s", routing_number],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::InstitutionRetrieveResponse,
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
