# frozen_string_literal: true

module Unit
  module Models
    class StopPaymentCreateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute data
      #
      #   @return [Unit::Models::StopPaymentCreateParams::Data]
      required :data, -> { Unit::Models::StopPaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::StopPaymentCreateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   expiration: Date,
      #   tags: -> { Unit::HashOf[String] === _1 }
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] expiration
        #
        #   @return [Date, nil]
        optional :expiration, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :expiration

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!parse
        #   # @param expiration [String]
        #   # @param tags [Hash{Symbol=>String}]
        #   #
        #   def initialize(expiration: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
