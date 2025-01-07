# frozen_string_literal: true

module Unit
  module Resources
    class CashDeposits
      class Barcodes
        class Image
          # @param client [Unit::Client]
          #
          def initialize(client:)
            @client = client
          end

          # Get Barcode Image By Barcode Number from API
          #
          # @param barcode_number [String]
          #
          # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Object]
          #
          def retrieve(barcode_number, opts = {})
            req = {
              method: :get,
              path: ["cash-deposits/barcodes/%0s/image", barcode_number],
              headers: {"Accept" => "image/png"},
              model: Unit::Unknown
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
