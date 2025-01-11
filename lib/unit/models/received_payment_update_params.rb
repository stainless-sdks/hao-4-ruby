# frozen_string_literal: true

module Unit
  module Models
    class ReceivedPaymentUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ReceivedPaymentUpdateParams::Data]
      required :data, -> { Unit::Models::ReceivedPaymentUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ReceivedPaymentUpdateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::ReceivedPaymentUpdateParams::Data::Attributes,
      #   type: enum: Unit::Models::ReceivedPaymentUpdateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::ReceivedPaymentUpdateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::ReceivedPaymentUpdateParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ReceivedPaymentUpdateParams::Data::Type]
        required :type, enum: -> { Unit::Models::ReceivedPaymentUpdateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::ReceivedPaymentUpdateParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

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

        # @example
        #
        # ```ruby
        # case type
        # in :achReceivedPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_RECEIVED_PAYMENT = :achReceivedPayment

          finalize!
        end
      end
    end
  end
end
