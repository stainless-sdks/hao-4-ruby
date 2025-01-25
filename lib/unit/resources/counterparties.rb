# frozen_string_literal: true

module Unit
  module Resources
    class Counterparties
      # @return [Unit::Resources::Counterparties::Balance]
      attr_reader :balance

      # Create a counterparty via API
      #
      # @param params [Unit::Models::CounterpartyCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CounterpartyCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::CounterpartyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "counterparties",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CounterpartyCreateResponse,
          options: options
        )
      end

      # Get a Counterparty from API
      #
      # @param counterparty_id [String] ID of the counterparty to get
      #
      # @param params [Unit::Models::CounterpartyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CounterpartyRetrieveResponse]
      #
      def retrieve(counterparty_id, params = {})
        @client.request(
          method: :get,
          path: ["counterparties/%0s", counterparty_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CounterpartyRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Counterparty via API
      #
      # @param counterparty_id [String] ID of the counterparty to update
      #
      # @param params [Unit::Models::CounterpartyUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CounterpartyUpdateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CounterpartyUpdateResponse]
      #
      def update(counterparty_id, params)
        parsed, options = Unit::Models::CounterpartyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["counterparties/%0s", counterparty_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CounterpartyUpdateResponse,
          options: options
        )
      end

      # Get Counterparties List from API
      #
      # @param params [Unit::Models::CounterpartyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CounterpartyListParams::Filter] :filter
      #
      #   @option params [Unit::Models::CounterpartyListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CounterpartyListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::CounterpartyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "counterparties",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CounterpartyListResponse,
          options: options
        )
      end

      # Delete Counterparty via API
      #
      # @param counterparty_id [String] ID of the counterparty to delete
      #
      # @param params [Unit::Models::CounterpartyDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def delete(counterparty_id, params = {})
        @client.request(
          method: :delete,
          path: ["counterparties/%0s", counterparty_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @balance = Unit::Resources::Counterparties::Balance.new(client: client)
      end
    end
  end
end
