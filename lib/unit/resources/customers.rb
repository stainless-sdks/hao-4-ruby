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
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerRetrieveResponse]
      #
      def retrieve(customer_id, opts = {})
        req = {
          method: :get,
          path: ["customers/%0s", customer_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CustomerRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update an Customer via API
      #
      # @param customer_id [String] ID of the customer to update
      #
      # @param params [Unit::Models::CustomerUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerUpdateResponse]
      #
      def update(customer_id, params = {}, opts = {})
        parsed = Unit::Models::CustomerUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["customers/%0s", customer_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CustomerUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get Customers List from API
      #
      # @param params [Unit::Models::CustomerListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerListParams::Filter] :filter
      #
      #   @option params [Unit::Models::CustomerListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::CustomerListParams.dump(params)
        req = {
          method: :get,
          path: "customers",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CustomerListResponse
        }
        @client.request(req, opts)
      end

      # Archive a Customer via API
      #
      # @param customer_id [String] ID of the customer to archive
      #
      # @param params [Unit::Models::CustomerArchiveParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerArchiveParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerArchiveResponse]
      #
      def archive(customer_id, params = {}, opts = {})
        parsed = Unit::Models::CustomerArchiveParams.dump(params)
        req = {
          method: :post,
          path: ["customers/%0s/archive", customer_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CustomerArchiveResponse
        }
        @client.request(req, opts)
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
