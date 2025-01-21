# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # card_retrieve_response => {
    #   data: Unit::Models::Card,
    #   included: -> { Unit::ArrayOf[Unit::ArrayOf[Unit::Models::CardRetrieveResponse::Included]] === _1 }
    # }
    # ```
    class CardRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Card, nil]
      optional :data, -> { Unit::Models::Card }

      # @!parse
      #   # @return [Unit::Models::Card]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Array<Unit::Models::CardRetrieveResponse::Included>>]
      optional :included, -> { Unit::ArrayOf[Unit::ArrayOf[Unit::Models::CardRetrieveResponse::Included]] }

      # @!parse
      #   # @return [Array<Array<Unit::Models::CardRetrieveResponse::Included>>]
      #   attr_writer :included

      # @!parse
      #   # @param data [Unit::Models::Card]
      #   # @param included [Array<Array<Unit::Models::CardRetrieveResponse::Included>>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown,
      #   type: String
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

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

        # @!attribute [r] type
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Object]
        #   # @param relationships [Object]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
