# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # card_retrieve_response => {
    #   data: Unit::Models::Card,
    #   included: -> { Unit::ArrayOf[Unit::ArrayOf[Unit::Models::CardRetrieveResponse::Included]] === _1 }
    # }
    # ```
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
      #   # @param data [Unit::Models::Card]
      #   # @param included [Array<Array<Unit::Models::CardRetrieveResponse::Included>>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown,
      #   type: String
      # }
      # ```
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
