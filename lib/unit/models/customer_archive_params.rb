# frozen_string_literal: true

module Unit
  module Models
    class CustomerArchiveParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CustomerArchiveParams::Data, nil]
      optional :data, -> { Unit::Models::CustomerArchiveParams::Data }

      # @!parse
      #   # @return [Unit::Models::CustomerArchiveParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CustomerArchiveParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CustomerArchiveParams::Data::Attributes,
      #   type: enum: Unit::Models::CustomerArchiveParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::CustomerArchiveParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::CustomerArchiveParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::CustomerArchiveParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CustomerArchiveParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::CustomerArchiveParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   reason: enum: Unit::Models::CustomerArchiveParams::Data::Attributes::Reason
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] reason
          #
          #   @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Attributes::Reason, nil]
          optional :reason, enum: -> { Unit::Models::CustomerArchiveParams::Data::Attributes::Reason }

          # @!parse
          #   # @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Attributes::Reason]
          #   attr_writer :reason

          # @!parse
          #   # @param reason [String]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case reason
          # in :Inactive
          #   # ...
          # in :FraudACHActivity
          #   # ...
          # in :FraudCardActivity
          #   # ...
          # in :FraudCheckActivity
          #   # ...
          # in :FraudApplicationHistory
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Unit::Enum
            INACTIVE = :Inactive
            FRAUD_ACH_ACTIVITY = :FraudACHActivity
            FRAUD_CARD_ACTIVITY = :FraudCardActivity
            FRAUD_CHECK_ACTIVITY = :FraudCheckActivity
            FRAUD_APPLICATION_HISTORY = :FraudApplicationHistory
            FRAUD_ACCOUNT_ACTIVITY = :FraudAccountActivity
            FRAUD_CLIENT_IDENTIFIED = :FraudClientIdentified
            FRAUD_LINKED_TO_FRAUDULENT_CUSTOMER = :FraudLinkedToFraudulentCustomer

            finalize!
          end
        end

        # @example
        # ```ruby
        # case type
        # in :archiveCustomer
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ARCHIVE_CUSTOMER = :archiveCustomer

          finalize!
        end
      end
    end
  end
end
