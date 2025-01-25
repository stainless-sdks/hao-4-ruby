# frozen_string_literal: true

module Unit
  module Models
    class AccountFreezeParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::AccountFreezeParams::Data, nil]
      optional :data, -> { Unit::Models::AccountFreezeParams::Data }

      # @!parse
      #   # @return [Unit::Models::AccountFreezeParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::AccountFreezeParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::AccountFreezeParams::Data::Attributes,
      #   type: Unit::Models::AccountFreezeParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::AccountFreezeParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::AccountFreezeParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::AccountFreezeParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::AccountFreezeParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::AccountFreezeParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::AccountFreezeParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::AccountFreezeParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   reason: Unit::Models::AccountFreezeParams::Data::Attributes::Reason,
        #   reason_text: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] reason
          #
          #   @return [Symbol, Unit::Models::AccountFreezeParams::Data::Attributes::Reason, nil]
          optional :reason, enum: -> { Unit::Models::AccountFreezeParams::Data::Attributes::Reason }

          # @!parse
          #   # @return [Symbol, Unit::Models::AccountFreezeParams::Data::Attributes::Reason]
          #   attr_writer :reason

          # @!attribute reason_text
          #
          #   @return [String, nil]
          optional :reason_text, String, api_name: :reasonText, nil?: true

          # @!parse
          #   # @param reason [String]
          #   # @param reason_text [String, nil]
          #   #
          #   def initialize(reason: nil, reason_text: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
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
