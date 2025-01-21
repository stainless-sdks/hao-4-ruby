# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # application_retrieve_response => {
    #   data: Unit::Models::Application,
    #   included: -> { Unit::ArrayOf[Unit::Models::ApplicationRetrieveResponse::Included] === _1 }
    # }
    # ```
    class ApplicationRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Application, nil]
      optional :data, -> { Unit::Models::Application }

      # @!parse
      #   # @return [Unit::Models::Application]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::ApplicationRetrieveResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::ApplicationRetrieveResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::ApplicationRetrieveResponse::Included>]
      #   attr_writer :included

      # @!parse
      #   # @param data [Unit::Models::Application]
      #   # @param included [Array<Unit::Models::ApplicationRetrieveResponse::Included>]
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
