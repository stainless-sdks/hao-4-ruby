# frozen_string_literal: true

module Unit
  module Resources
    class Cards
      # @return [Unit::Resources::Cards::Limits]
      attr_reader :limits

      # @return [Unit::Resources::Cards::SecureData]
      attr_reader :secure_data

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
        @limits = Unit::Resources::Cards::Limits.new(client: client)
        @secure_data = Unit::Resources::Cards::SecureData.new(client: client)
      end

      # Create a Card via API
      #
      # @param params [Unit::Models::CardCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardCreateResponse]
      #
      def create(params = {}, opts = {})
        parsed = Unit::Models::CardCreateParams.dump(params)
        req = {
          method: :post,
          path: "cards",
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CardCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a Card from API
      #
      # @param card_id [String] ID of the card to get
      #
      # @param params [Unit::Models::CardRetrieveParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :included
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardRetrieveResponse]
      #
      def retrieve(card_id, params = {}, opts = {})
        parsed = Unit::Models::CardRetrieveParams.dump(params)
        req = {
          method: :get,
          path: ["cards/%0s", card_id],
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardRetrieveResponse
        }
        @client.request(req, opts)
      end

      # Update a Card via API
      #
      # @param card_id [String] ID of the card to update
      #
      # @param params [Unit::Models::CardUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardUpdateResponse]
      #
      def update(card_id, params = {}, opts = {})
        parsed = Unit::Models::CardUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["cards/%0s", card_id],
          headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
          body: parsed,
          model: Unit::Models::CardUpdateResponse
        }
        @client.request(req, opts)
      end

      # Get List of Cards from API
      #
      # @param params [Unit::Models::CardListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CardListParams::Filter] :filter
      #
      #   @option params [String] :include
      #
      #   @option params [Unit::Models::CardListParams::Page] :page Parameters for paginated list requests
      #
      #   @option params [String] :sort
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardListResponse]
      #
      def list(params = {}, opts = {})
        parsed = Unit::Models::CardListParams.dump(params)
        req = {
          method: :get,
          path: "cards",
          query: parsed,
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardListResponse
        }
        @client.request(req, opts)
      end

      # Close a Card via API
      #
      # @param card_id [String] ID of the card to close
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardCloseResponse]
      #
      def close(card_id, opts = {})
        req = {
          method: :post,
          path: ["cards/%0s/close", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardCloseResponse
        }
        @client.request(req, opts)
      end

      # Freeze a Card via API
      #
      # @param card_id [String] ID of the card to freeze
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardFreezeResponse]
      #
      def freeze_(card_id, opts = {})
        req = {
          method: :post,
          path: ["cards/%0s/freeze", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardFreezeResponse
        }
        @client.request(req, opts)
      end

      # Replace a Card via API
      #
      # @param card_id [String] ID of the card to replace
      #
      # @param params [Unit::Models::CardReplaceParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::CardReplaceParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardReplaceResponse]
      #
      def replace(card_id, params = {}, opts = {})
        parsed = Unit::Models::CardReplaceParams.dump(params)
        req = {
          method: :post,
          path: ["cards/%0s/replace", card_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::CardReplaceResponse
        }
        @client.request(req, opts)
      end

      # Report lost as stolen via API
      #
      # @param card_id [String] ID of the card
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardReportLostResponse]
      #
      def report_lost(card_id, opts = {})
        req = {
          method: :post,
          path: ["cards/%0s/report-lost", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardReportLostResponse
        }
        @client.request(req, opts)
      end

      # Report card as stolen via API
      #
      # @param card_id [String] ID of the card
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardReportStolenResponse]
      #
      def report_stolen(card_id, opts = {})
        req = {
          method: :post,
          path: ["cards/%0s/report-stolen", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardReportStolenResponse
        }
        @client.request(req, opts)
      end

      # Unfreeze a Card via API
      #
      # @param card_id [String] ID of the card to unfreeze
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::CardUnfreezeResponse]
      #
      def unfreeze(card_id, opts = {})
        req = {
          method: :post,
          path: ["cards/%0s/unfreeze", card_id],
          headers: {"Accept" => "application/vnd.api+json; charset=utf-8"},
          model: Unit::Models::CardUnfreezeResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
