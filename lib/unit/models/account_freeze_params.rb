# frozen_string_literal: true

module Unit
  module Models
    class AccountFreezeParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AccountFreezeParams::Data]
      optional :data, -> { Unit::Models::AccountFreezeParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AccountFreezeParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        #   # @param attributes [Unit::Models::AccountFreezeParams::Data::Attributes, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::AccountFreezeParams::Data::Attributes::Reason]
          optional :reason, enum: -> { Unit::Models::AccountFreezeParams::Data::Attributes::Reason }

          # @!attribute reason_text
          #
          #   @return [String]
          optional :reason_text, String, api_name: :reasonText

          # @!parse
          #   # @param reason [String, nil]
          #   # @param reason_text [String, nil]
          #   #
          #   def initialize(reason: nil, reason_text: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :Fraud
          #   # ...
          # in :Other
          #   # ...
          # end
          # ```
          class Reason < Unit::Enum
            FRAUD = :Fraud
            OTHER = :Other
          end
        end

        # @example
        #
        # ```ruby
        # case enum
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
        end
      end
    end
  end
end
