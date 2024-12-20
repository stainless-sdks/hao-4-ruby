# frozen_string_literal: true

module Unit
  module Models
    class Application < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::Application::Type]
      optional :type, enum: -> { Unit::Models::Application::Type }

      # @!parse
      #   # @param id [String, nil]
      #   # @param type [String, nil]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
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
