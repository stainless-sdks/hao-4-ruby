# frozen_string_literal: true

module Unit
  module Resources
    class Counterparties
      # @return [Unit::Resources::Counterparties::Balance]
      attr_reader :balance

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @balance = Unit::Resources::Counterparties::Balance.new(client: client)
      end

      # Create a counterparty via API
      #
      # @param params [Unit::Models::CounterpartyCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CounterpartyCreateParams::Data::CreateACHCounterparty, Unit::Models::CounterpartyCreateParams::Data::CreatePlaidCounterparty] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CounterpartyCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::CounterpartyCreateParams.dump(params)
        req = {
          method: :post,
          path: "counterparties",
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CounterpartyCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Counterparty from API
      #
      # @param counterparty_id [String] ID of the counterparty to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CounterpartyRetrieveResponse]
      #
      def retrieve(counterparty_id, opts = {})
        req = {
          method: :get,
          path: ["counterparties/%0s", counterparty_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CounterpartyRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update a Counterparty via API
      #
      # @param counterparty_id [String] ID of the counterparty to update
      #
      # @param params [Unit::Models::CounterpartyUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CounterpartyUpdateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CounterpartyUpdateResponse]
      #
      def update(counterparty_id, params = {}, opts = {})
        parsed = Unit::Models::CounterpartyUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["counterparties/%0s", counterparty_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CounterpartyUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get Counterparties List from API
      #
      # @param params [Unit::Models::CounterpartyListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CounterpartyListParams::Filter] :filter
      #
      #   @option params [Unit::Models::CounterpartyListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CounterpartyListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::CounterpartyListParams.dump(params)
        req = {
          method: :get,
          path: "counterparties",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CounterpartyListResponse
        }
        @client.request(req, opts)
      end

      # Delete Counterparty via API
      #
      # @param counterparty_id [String] ID of the counterparty to delete
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      #
      def delete(counterparty_id, opts = {})
        req = {
          method: :delete,
          path: ["counterparties/%0s", counterparty_id],
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
