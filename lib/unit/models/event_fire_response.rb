# frozen_string_literal: true

module Unit
  module Models
    class EventFireResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::EventFireResponse::Data]
      optional :data, -> { Unit::Models::EventFireResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::EventFireResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute attributes
        #
        #   @return [Object]
        optional :attributes, Unit::Unknown

        # @!attribute relationships
        #
        #   @return [Object]
        optional :relationships, Unit::Unknown

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   # @param attributes [Object, nil]
        #   # @param relationships [Object, nil]
        #   #
        #   def initialize(id:, type:, attributes: nil, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
