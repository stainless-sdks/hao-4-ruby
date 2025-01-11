# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # beneficial_owner_update_response => {
    #   data: Unit::Models::BeneficialOwnerUpdateResponse::Data
    # }
    # ```
    class BeneficialOwnerUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::BeneficialOwnerUpdateResponse::Data]
      required :data, -> { Unit::Models::BeneficialOwnerUpdateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::BeneficialOwnerUpdateResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::BeneficialOwner,
      #   type: Unit::Models::BeneficialOwnerUpdateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::BeneficialOwner]
        optional :attributes, -> { Unit::Models::BeneficialOwner }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::BeneficialOwnerUpdateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::BeneficialOwner]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case type
        # in :beneficialOwner
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          BENEFICIAL_OWNER = :beneficialOwner

          finalize!
        end
      end
    end
  end
end
