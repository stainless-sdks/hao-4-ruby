# frozen_string_literal: true

module Unit
  module Resources
    class Fees
      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Create a Fee via API
      #
      # @param params [Unit::Models::FeeCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::FeeCreateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::FeeCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::FeeCreateParams.dump(params)
        req = {
          method: :post,
          path: "fees",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::FeeCreateResponse
        }
        @client.request(req, opts)
      end

      # Reverse a Fee via API
      #
      # @param params [Unit::Models::FeeReverseParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::FeeReverseParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::FeeReverseResponse]
      #
      def reverse(params = {}, opts = {})
        parsed = Unit::Models::FeeReverseParams.dump(params)
        req = {
          method: :post,
          path: "fees/reverse",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::FeeReverseResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
