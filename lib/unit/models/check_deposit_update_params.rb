# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositUpdateParams::Data]
      required :data, -> { Unit::Models::CheckDepositUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositUpdateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CheckDepositUpdateParams::Data::Attributes,
      #   type: enum: Unit::Models::CheckDepositUpdateParams::Data::Type
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
          # @!attribute clearing_days_override
          #
          #   @return [Integer]
          optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
          optional :tags, Unit::HashOf[String]

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
