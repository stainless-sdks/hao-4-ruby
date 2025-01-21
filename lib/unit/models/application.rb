# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # application => {
    #   id: String,
    #   type: enum: Unit::Models::Application::Type
    # }
    # ```
    class Application < Unit::BaseModel
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] type
      #
      #   @return [Symbol, Unit::Models::Application::Type, nil]
      optional :type, enum: -> { Unit::Models::Application::Type }

      # @!parse
      #   # @return [Symbol, Unit::Models::Application::Type]
      #   attr_writer :type

      # @!parse
      #   # @param id [String]
      #   # @param type [String]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case type
      # in :individualApplication
      #   # ...
      # in :businessApplication
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        INDIVIDUAL_APPLICATION = :individualApplication
        BUSINESS_APPLICATION = :businessApplication

        finalize!
      end
    end
  end
end
