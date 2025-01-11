# frozen_string_literal: true

module Unit
  module Models
    class WebhookUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::WebhookUpdateParams::Data]
      optional :data, -> { Unit::Models::WebhookUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::WebhookUpdateParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::WebhookUpdateParams::Data::Attributes,
      #   type: String
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookUpdateParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::WebhookUpdateParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

        # @!parse
        #   # @param attributes [Unit::Models::WebhookUpdateParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param tags [Hash{Symbol => String}]
          #   #
          #   def initialize(tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
