# frozen_string_literal: true

module Unit
  module Models
    class PaymentUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment]
      required :data, union: -> { Unit::Models::PaymentUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment
      #   # ...
      # in Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment
      #   # ...
      # in Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment }

        variant -> { Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment }

        variant -> { Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment }

        class UpdateACHPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Attributes]
          required :attributes, -> { Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Type]
          required :type, enum: -> { Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute clearing_days_override
            #
            #   @return [Integer]
            optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param clearing_days_override [Integer, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(clearing_days_override: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_PAYMENT = :achPayment
          end
        end

        class UpdateBookPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Attributes]
          required :attributes, -> { Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Type]
          required :type, enum: -> { Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :bookPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BOOK_PAYMENT = :bookPayment
          end
        end

        class UpdateACHReceivedPayment < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Type]
          required :type, enum: -> { Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Type }

          # @!parse
          #   # @param attributes [Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achReceivedPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_RECEIVED_PAYMENT = :achReceivedPayment
          end
        end
      end
    end
  end
end
