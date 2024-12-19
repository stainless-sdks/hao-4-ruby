# frozen_string_literal: true

module Unit
  module Models
    class CardRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Card]
      optional :data, -> { Unit::Models::Card }

      # @!attribute included
      #
      #   @return [Array<Array<Unit::Models::CardRetrieveResponse::Included>>]
      optional :included, Unit::ArrayOf[Unit::ArrayOf[-> { Unit::Models::CardRetrieveResponse::Included }]]

      # @!parse
      #   # @param data [Unit::Models::Card, nil]
      #   # @param included [Array<Array<Unit::Models::CardRetrieveResponse::Included>>, nil]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Included < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Object]
        optional :attributes, Unit::Unknown

        # @!attribute relationships
        #
        #   @return [Object]
        optional :relationships, Unit::Unknown

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

        # @!parse
        #   # @param id [String, nil]
        #   # @param attributes [Object, nil]
        #   # @param relationships [Object, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
