# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # institution_retrieve_response => {
    #   data: Unit::Models::InstitutionRetrieveResponse::Data
    # }
    # ```
    class InstitutionRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::InstitutionRetrieveResponse::Data]
      optional :data, -> { Unit::Models::InstitutionRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::InstitutionRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::InstitutionRetrieveResponse::Data::Attributes,
      #   type: enum: Unit::Models::InstitutionRetrieveResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::InstitutionRetrieveResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::InstitutionRetrieveResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::InstitutionRetrieveResponse::Data::Type]
        required :type, enum: -> { Unit::Models::InstitutionRetrieveResponse::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::InstitutionRetrieveResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   is_ach_supported: Unit::BooleanModel,
        #   is_wire_supported: Unit::BooleanModel,
        #   name: String,
        #   routing_number: String,
        #   address: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute is_ach_supported
          #
          #   @return [Boolean]
          required :is_ach_supported, Unit::BooleanModel, api_name: :isACHSupported

          # @!attribute is_wire_supported
          #
          #   @return [Boolean]
          required :is_wire_supported, Unit::BooleanModel, api_name: :isWireSupported

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute routing_number
          #
          #   @return [String]
          required :routing_number, String, api_name: :routingNumber

          # @!attribute address
          #
          #   @return [String]
          optional :address, String

          # @!parse
          #   # @param is_ach_supported [Boolean]
          #   # @param is_wire_supported [Boolean]
          #   # @param name [String]
          #   # @param routing_number [String]
          #   # @param address [String]
          #   #
          #   def initialize(is_ach_supported:, is_wire_supported:, name:, routing_number:, address: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # case type
        # in :institution
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          INSTITUTION = :institution

          finalize!
        end
      end
    end
  end
end
