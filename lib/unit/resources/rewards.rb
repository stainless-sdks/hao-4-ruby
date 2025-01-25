# frozen_string_literal: true

module Unit
  module Resources
    class Rewards
      # Create a Reward via API
      #
      # @param params [Unit::Models::RewardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RewardCreateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RewardCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::RewardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "rewards",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::RewardCreateResponse,
          options: options
        )
      end

      # Get a Reward from API
      #
      # @param reward_id [String] ID of the reward to get
      #
      # @param params [Unit::Models::RewardRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RewardRetrieveResponse]
      #
      def retrieve(reward_id, params = {})
        @client.request(
          method: :get,
          path: ["rewards/%0s", reward_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RewardRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get Rewards List from API
      #
      # @param params [Unit::Models::RewardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::RewardListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::RewardListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::RewardListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::RewardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "rewards",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RewardListResponse,
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
