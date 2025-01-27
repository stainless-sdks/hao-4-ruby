# frozen_string_literal: true

module Unit
  module Models
    class PaymentUpdateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute data
      #
      #   @return [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment]
      required :data, union: -> { Unit::Models::PaymentUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment, Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment, Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case data
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

        # @example
        # ```ruby
        # update_ach_payment => {
        #   attributes: Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Attributes,
        #   type: Unit::Models::PaymentUpdateParams::Data::UpdateACHPayment::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   clearing_days_override: Integer,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] clearing_days_override
            #
            #   @return [Integer, nil]
            optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

            # @!parse
            #   # @return [Integer]
            #   attr_writer :clearing_days_override

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param clearing_days_override [Integer]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(clearing_days_override: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # case type
          # in :achPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_PAYMENT = :achPayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # update_book_payment => {
        #   attributes: Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Attributes,
        #   type: Unit::Models::PaymentUpdateParams::Data::UpdateBookPayment::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # case type
          # in :bookPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BOOK_PAYMENT = :bookPayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # update_ach_received_payment => {
        #   attributes: Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Attributes,
        #   type: Unit::Models::PaymentUpdateParams::Data::UpdateACHReceivedPayment::Type
        # }
        # ```
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

          # @example
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
end
