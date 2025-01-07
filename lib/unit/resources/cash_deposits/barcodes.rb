# frozen_string_literal: true

module Unit
  module Resources
    class CashDeposits
      class Barcodes
        # @return [Unit::Resources::CashDeposits::Barcodes::Image]
        attr_reader :image

        # @param client [Unit::Client]
        #
        def initialize(client:)
          @client = client
          @image = Unit::Resources::CashDeposits::Barcodes::Image.new(client: client)
        end

        # Generate Cash Deposit Barcode via API
        #
        # @param params [Hash{Symbol => Object}, Unit::Models::CashDeposits::BarcodeCreateParams] Attributes to send in this request.
        #
        #   @option params [Unit::Models::CashDeposits::BarcodeCreateParams::Data] :data
        #
        # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Unit::Models::CashDeposits::BarcodeCreateResponse]
        #
        def create(params = {}, opts = {})
          parsed = Unit::Models::CashDeposits::BarcodeCreateParams.dump(params)
          req = {
            method: :post,
            path: "cash-deposits/barcodes",
            headers: {"Content-Type" => "application/vnd.api+json", "Accept" => "application/vnd.api+json"},
            body: parsed,
            model: Unit::Models::CashDeposits::BarcodeCreateResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
