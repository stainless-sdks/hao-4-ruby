# frozen_string_literal: true

module Unit
  module Resources
    class CashDeposits
      class Barcodes
        class Image
          # Get Barcode Image By Barcode Number from API
          #
          # @param barcode_number [String]
          #
          # @param params [Unit::Models::CashDeposits::Barcodes::ImageRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Object]
          #
          def retrieve(barcode_number, params = {})
            @client.request(
              method: :get,
              path: ["cash-deposits/barcodes/%0s/image", barcode_number],
              headers: {"Accept" => "image/png"},
              model: Unit::Unknown,
              options: params[:request_options]
            )
          end

          # @param client [Unit::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
