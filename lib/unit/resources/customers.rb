# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      # @return [Unit::Resources::Customers::AuthorizedUsers]
      attr_reader :authorized_users

      # @return [Unit::Resources::Customers::Token]
      attr_reader :token

      # Get a Customer from API
      #
      # @param customer_id [String] ID of the customer to get
      #
      # @param params [Unit::Models::CustomerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CustomerRetrieveResponse]
      #
      def retrieve(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%0s", customer_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CustomerRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update an Customer via API
      #
      # @param customer_id [String] ID of the customer to update
      #
      # @param params [Unit::Models::CustomerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CustomerUpdateResponse]
      #
      def update(customer_id, params = {})
        parsed, options = Unit::Models::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["customers/%0s", customer_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CustomerUpdateResponse,
          options: options
        )
      end

      # Get Customers List from API
      #
      # @param params [Unit::Models::CustomerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CustomerListParams::Filter] :filter
      #
      #   @option params [Unit::Models::CustomerListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CustomerListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CustomerListResponse,
          options: options
        )
      end

      # Archive a Customer via API
      #
      # @param customer_id [String] ID of the customer to archive
      #
      # @param params [Unit::Models::CustomerArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CustomerArchiveParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CustomerArchiveResponse]
      #
      def archive(customer_id, params = {})
        parsed, options = Unit::Models::CustomerArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["customers/%0s/archive", customer_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CustomerArchiveResponse,
          options: options
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @authorized_users = Unit::Resources::Customers::AuthorizedUsers.new(client: client)
        @token = Unit::Resources::Customers::Token.new(client: client)
      end
    end
  end
end
