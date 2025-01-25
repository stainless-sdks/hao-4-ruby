# frozen_string_literal: true

module Unit
  module Resources
    class BeneficialOwners
      # Update a Business Beneficial Owner
      #
      # @param beneficial_owner_id [String] ID of the beneficial owner to update
      #
      # @param params [Unit::Models::BeneficialOwnerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Unit::Models::BeneficialOwnerUpdateParams::Data] :data
      #
      #   @option params [Unit::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Unit::Models::BeneficialOwnerUpdateResponse]
      #
      def update(beneficial_owner_id, params)
        parsed, options = Unit::Models::BeneficialOwnerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["beneficial-owner/%0s", beneficial_owner_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::BeneficialOwnerUpdateResponse,
          options: options
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
