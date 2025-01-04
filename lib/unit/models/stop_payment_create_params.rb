# frozen_string_literal: true

module Unit
  module Models
    class StopPaymentCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::StopPaymentCreateParams::Data]
      required :data, -> { Unit::Models::StopPaymentCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::StopPaymentCreateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute expiration
        #
        #   @return [Date]
        optional :expiration, Date

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param expiration [String]
        #   # @param tags [Hash{Symbol => String}]
        #   #
        #   def initialize(expiration: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
