# frozen_string_literal: true

module Unit
  module Models
    class AccountFreezeParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AccountFreezeParams::Data]
      optional :data, -> { Unit::Models::AccountFreezeParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AccountFreezeParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::AccountFreezeParams::Data::Attributes,
      #   type: enum: Unit::Models::AccountFreezeParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::AccountFreezeParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::AccountFreezeParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AccountFreezeParams::Data::Type]
        optional :type, enum: -> { Unit::Models::AccountFreezeParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::AccountFreezeParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   reason: enum: Unit::Models::AccountFreezeParams::Data::Attributes::Reason,
        #   reason_text: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::AccountFreezeParams::Data::Attributes::Reason]
          optional :reason, enum: -> { Unit::Models::AccountFreezeParams::Data::Attributes::Reason }

          # @!attribute reason_text
          #
          #   @return [String, nil]
          optional :reason_text, String, api_name: :reasonText

          # @!parse
          #   # @param reason [String]
          #   # @param reason_text [String, nil]
          #   #
          #   def initialize(reason: nil, reason_text: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case reason
          # in :Fraud
          #   # ...
          # in :Other
          #   # ...
          # end
          # ```
          class Reason < Unit::Enum
            FRAUD = :Fraud
            OTHER = :Other

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # case type
        # in :creditAccountFreeze
        #   # ...
        # in :accountFreeze
        #   # ...
        # in :walletAccountFreeze
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CREDIT_ACCOUNT_FREEZE = :creditAccountFreeze
          ACCOUNT_FREEZE = :accountFreeze
          WALLET_ACCOUNT_FREEZE = :walletAccountFreeze

          finalize!
        end
      end
    end
  end
end
