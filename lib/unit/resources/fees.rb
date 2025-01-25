# frozen_string_literal: true

module Unit
  module Resources
    class Fees
      # Create a Fee via API
      #
      # @param params [Unit::Models::FeeCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::FeeCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::FeeCreateResponse]
      #
      def create(params)
        parsed, options = Unit::Models::FeeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fees",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::FeeCreateResponse,
          options: options
        )
      end

      # Reverse a Fee via API
      #
      # @param params [Unit::Models::FeeReverseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::FeeReverseParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::FeeReverseResponse]
      #
      def reverse(params)
        parsed, options = Unit::Models::FeeReverseParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fees/reverse",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::FeeReverseResponse,
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
