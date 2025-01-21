# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # card_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Card] === _1 },
    #   included: -> { Unit::ArrayOf[Unit::ArrayOf[Unit::Models::CardListResponse::Included]] === _1 }
    # }
    # ```
    class CardListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::Card>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Card] }

      # @!parse
      #   # @return [Array<Unit::Models::Card>]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Array<Unit::Models::CardListResponse::Included>>]
      optional :included, -> { Unit::ArrayOf[Unit::ArrayOf[Unit::Models::CardListResponse::Included]] }

      # @!parse
      #   # @return [Array<Array<Unit::Models::CardListResponse::Included>>]
      #   attr_writer :included

      # @!parse
      #   # @param data [Array<Unit::Models::Card>]
      #   # @param included [Array<Array<Unit::Models::CardListResponse::Included>>]
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
