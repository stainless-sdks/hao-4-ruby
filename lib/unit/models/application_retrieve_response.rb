# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # application_retrieve_response => {
    #   data: Unit::Models::Application,
    #   included: -> { Unit::ArrayOf[Unit::Models::ApplicationRetrieveResponse::Included] === _1 }
    # }
    # ```
    class ApplicationRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Application]
      optional :data, -> { Unit::Models::Application }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::ApplicationRetrieveResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::ApplicationRetrieveResponse::Included] }

      # @!parse
      #   # @param data [Unit::Models::Application]
      #   # @param included [Array<Unit::Models::ApplicationRetrieveResponse::Included>]
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
