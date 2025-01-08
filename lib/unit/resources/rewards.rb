# frozen_string_literal: true

module Unit
  module Resources
    class Rewards
      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Create a Reward via API
      #
      # @param params [Unit::Models::RewardCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RewardCreateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RewardCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::RewardCreateParams.dump(params)
        req = {
          method: :post,
          path: "rewards",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::RewardCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Reward from API
      #
      # @param reward_id [String] ID of the reward to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RewardRetrieveResponse]
      #
      def retrieve(reward_id, opts = {})
        req = {
          method: :get,
          path: ["rewards/%0s", reward_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RewardRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Get Rewards List from API
      #
      # @param params [Unit::Models::RewardListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::RewardListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::RewardListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::RewardListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::RewardListParams.dump(params)
        req = {
          method: :get,
          path: "rewards",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::RewardListResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
