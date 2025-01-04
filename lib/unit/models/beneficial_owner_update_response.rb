# frozen_string_literal: true

module Unit
  module Models
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
        # case enum
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
