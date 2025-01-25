# frozen_string_literal: true

module Unit
  module Models
    class WebhookUpdateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::WebhookUpdateParams::Data, nil]
      optional :data, -> { Unit::Models::WebhookUpdateParams::Data }

      # @!parse
      #   # @return [Unit::Models::WebhookUpdateParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::WebhookUpdateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::WebhookUpdateParams::Data::Attributes,
      #   type: String
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::WebhookUpdateParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::WebhookUpdateParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::WebhookUpdateParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::WebhookUpdateParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
