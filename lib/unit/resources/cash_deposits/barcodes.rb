# frozen_string_literal: true

module Unit
  module Resources
    class CashDeposits
      class Barcodes
        # @return [Unit::Resources::CashDeposits::Barcodes::Image]
        attr_reader :image

        # Generate Cash Deposit Barcode via API
        #
        # @param params [Unit::Models::CashDeposits::BarcodeCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Unit::Models::CashDeposits::BarcodeCreateParams::Data] :data
        #
        #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Unit::Models::CashDeposits::BarcodeCreateResponse]
        #
        def create(params)
          parsed, options = Unit::Models::CashDeposits::BarcodeCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cash-deposits/barcodes",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::CashDeposits::BarcodeCreateResponse,
            options: options
          )
        end

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @image = Unit::Resources::CashDeposits::Barcodes::Image.new(client: client)
        end
      end
    end
  end
end
