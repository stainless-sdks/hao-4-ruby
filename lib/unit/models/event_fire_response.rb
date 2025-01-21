# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # event_fire_response => {
    #   data: Unit::Models::EventFireResponse::Data
    # }
    # ```
    class EventFireResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::EventFireResponse::Data, nil]
      optional :data, -> { Unit::Models::EventFireResponse::Data }

      # @!parse
      #   # @return [Unit::Models::EventFireResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::EventFireResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute [r] attributes
        #
        #   @return [Object, nil]
        optional :attributes, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Object, nil]
        optional :relationships, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :relationships

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   # @param attributes [Object]
        #   # @param relationships [Object]
        #   #
        #   def initialize(id:, type:, attributes: nil, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
