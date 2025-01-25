# frozen_string_literal: true

module Unit
  module Models
    class ApplicationCancelParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::ApplicationCancelParams::Data, nil]
      optional :data, -> { Unit::Models::ApplicationCancelParams::Data }

      # @!parse
      #   # @return [Unit::Models::ApplicationCancelParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::ApplicationCancelParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::ApplicationCancelParams::Data::Attributes,
      #   type: Unit::Models::ApplicationCancelParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::ApplicationCancelParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::ApplicationCancelParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::ApplicationCancelParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::ApplicationCancelParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::ApplicationCancelParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::ApplicationCancelParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::ApplicationCancelParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   reason: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!parse
          #   # @return [String]
          #   attr_writer :reason

          # @!parse
          #   # @param reason [String]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # case type
        # in :applicationCancel
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          APPLICATION_CANCEL = :applicationCancel

          finalize!
        end
      end
    end
  end
end
