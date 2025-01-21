# frozen_string_literal: true

module Unit
  module Models
    # @example
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
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::BeneficialOwner,
      #   type: enum: Unit::Models::BeneficialOwnerUpdateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::BeneficialOwner, nil]
        optional :attributes, -> { Unit::Models::BeneficialOwner }

        # @!parse
        #   # @return [Unit::Models::BeneficialOwner]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::BeneficialOwnerUpdateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::BeneficialOwnerUpdateResponse::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::BeneficialOwner]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
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
