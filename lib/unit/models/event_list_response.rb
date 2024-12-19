# frozen_string_literal: true

module Unit
  module Models
    class EventListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::EventListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::EventListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::EventListResponse::Data>, nil]
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
