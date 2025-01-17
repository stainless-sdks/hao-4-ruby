# frozen_string_literal: true

module Unit
  module Resources
    class BeneficialOwners
      # Update a Business Beneficial Owner
      #
      # @param beneficial_owner_id [String] ID of the beneficial owner to update
      #
      # @param params [Unit::Models::BeneficialOwnerUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Unit::Models::BeneficialOwnerUpdateParams::Data] :data
      #
      # @param opts [Hash{Symbol => Object}, Unit::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Unit::Models::BeneficialOwnerUpdateResponse]
      #
      def update(beneficial_owner_id, params = {}, opts = {})
        parsed = Unit::Models::BeneficialOwnerUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["beneficial-owner/%0s", beneficial_owner_id],
          headers: {
            "Content-Type" => "application/vnd.api+json",
            "Accept" => "application/vnd.api+json; charset=utf-8"
          },
          body: parsed,
          model: Unit::Models::BeneficialOwnerUpdateResponse
        }
        @client.request(req, opts)
      end

      # @param client [Unit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
