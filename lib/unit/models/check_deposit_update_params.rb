# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositUpdateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositUpdateParams::Data]
      required :data, -> { Unit::Models::CheckDepositUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositUpdateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CheckDepositUpdateParams::Data::Attributes,
      #   type: Unit::Models::CheckDepositUpdateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckDepositUpdateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckDepositUpdateParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckDepositUpdateParams::Data::Type]
        required :type, enum: -> { Unit::Models::CheckDepositUpdateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CheckDepositUpdateParams::Data::Attributes]
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
        # in :checkDeposit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_DEPOSIT = :checkDeposit

          finalize!
        end
      end
    end
  end
end
