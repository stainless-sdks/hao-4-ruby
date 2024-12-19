# frozen_string_literal: true

module Unit
  module Resources
    class Customers
      # @return [Unit::Resources::Customers::AuthorizedUsers]
      attr_reader :authorized_users

      # @return [Unit::Resources::Customers::Token]
      attr_reader :token

      # @param client [Unit::Client]
      def initialize(client:)
        @client = client
        @authorized_users = Unit::Resources::Customers::AuthorizedUsers.new(client: client)
        @token = Unit::Resources::Customers::Token.new(client: client)
      end

      # Get a Customer from API
      #
      # @param customer_id [String] ID of the customer to get
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerRetrieveResponse]
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
      # @param params [Hash{Symbol => Object}, Unit::Models::CustomerUpdateParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerUpdateResponse]
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
      # @param params [Hash{Symbol => Object}, Unit::Models::CustomerListParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerListParams::Filter, nil] :filter
      #
      #   @option params [Unit::Models::CustomerListParams::Page, nil] :page Parameters for paginated list requests
      #
      #   @option params [String, nil] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerListResponse]
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
      # @param params [Hash{Symbol => Object}, Unit::Models::CustomerArchiveParams] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CustomerArchiveParams::Data, nil] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CustomerArchiveResponse]
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
    end
  end
end
