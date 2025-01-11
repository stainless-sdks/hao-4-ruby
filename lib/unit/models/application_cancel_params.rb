# frozen_string_literal: true

module Unit
  module Models
    class ApplicationCancelParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationCancelParams::Data]
      optional :data, -> { Unit::Models::ApplicationCancelParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ApplicationCancelParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::ApplicationCancelParams::Data::Attributes,
      #   type: enum: Unit::Models::ApplicationCancelParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::ApplicationCancelParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::ApplicationCancelParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ApplicationCancelParams::Data::Type]
        optional :type, enum: -> { Unit::Models::ApplicationCancelParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::ApplicationCancelParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   reason: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [String]
          optional :reason, String

          # @!parse
          #   # @param reason [String]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        #
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
