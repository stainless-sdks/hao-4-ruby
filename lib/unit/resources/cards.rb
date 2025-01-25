# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      # @return [Unit::Resources::Cards::Limits]
      attr_reader :limits

      # @return [Unit::Resources::Cards::SecureData]
      attr_reader :secure_data

      # Create a Card via API
      #
      # @param params [Unit::Models::CardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardCreateResponse]
      #
      def create(params = {})
        parsed, options = Unit::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "cards",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CardCreateResponse,
          options: options
        )
      end

      # Get a Card from API
      #
      # @param card_id [String] ID of the card to get
      #
      # @param params [Unit::Models::CardRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :included
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardRetrieveResponse]
      #
      def retrieve(card_id, params = {})
        parsed, options = Unit::Models::CardRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["cards/%0s", card_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardRetrieveResponse,
          options: options
        )
      end

      # Update a Card via API
      #
      # @param card_id [String] ID of the card to update
      #
      # @param params [Unit::Models::CardUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardUpdateResponse]
      #
      def update(card_id, params)
        parsed, options = Unit::Models::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["cards/%0s", card_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CardUpdateResponse,
          options: options
        )
      end

      # Get List of Cards from API
      #
      # @param params [Unit::Models::CardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CardListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::CardListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardListResponse]
      #
      def list(params = {})
        parsed, options = Unit::Models::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "cards",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardListResponse,
          options: options
        )
      end

      # Close a Card via API
      #
      # @param card_id [String] ID of the card to close
      #
      # @param params [Unit::Models::CardCloseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardCloseResponse]
      #
      def close(card_id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%0s/close", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardCloseResponse,
          options: params[:request_options]
        )
      end

      # Freeze a Card via API
      #
      # @param card_id [String] ID of the card to freeze
      #
      # @param params [Unit::Models::CardFreezeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardFreezeResponse]
      #
      def freeze_(card_id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%0s/freeze", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardFreezeResponse,
          options: params[:request_options]
        )
      end

      # Replace a Card via API
      #
      # @param card_id [String] ID of the card to replace
      #
      # @param params [Unit::Models::CardReplaceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::CardReplaceParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardReplaceResponse]
      #
      def replace(card_id, params)
        parsed, options = Unit::Models::CardReplaceParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["cards/%0s/replace", card_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CardReplaceResponse,
          options: options
        )
      end

      # Report lost as stolen via API
      #
      # @param card_id [String] ID of the card
      #
      # @param params [Unit::Models::CardReportLostParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardReportLostResponse]
      #
      def report_lost(card_id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%0s/report-lost", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardReportLostResponse,
          options: params[:request_options]
        )
      end

      # Report card as stolen via API
      #
      # @param card_id [String] ID of the card
      #
      # @param params [Unit::Models::CardReportStolenParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardReportStolenResponse]
      #
      def report_stolen(card_id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%0s/report-stolen", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardReportStolenResponse,
          options: params[:request_options]
        )
      end

      # Unfreeze a Card via API
      #
      # @param card_id [String] ID of the card to unfreeze
      #
      # @param params [Unit::Models::CardUnfreezeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::CardUnfreezeResponse]
      #
      def unfreeze(card_id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%0s/unfreeze", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardUnfreezeResponse,
          options: params[:request_options]
        )
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @limits = Unit::Resources::Cards::Limits.new(client: client)
        @secure_data = Unit::Resources::Cards::SecureData.new(client: client)
      end
    end
  end
end
