# frozen_string_literal: true

module Unit
  module Models
    class CustomerArchiveParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CustomerArchiveParams::Data]
      optional :data, -> { Unit::Models::CustomerArchiveParams::Data }

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
        # @!attribute attributes
        #
        #   @return [Unit::Models::CustomerArchiveParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::CustomerArchiveParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerArchiveParams::Data::Type }

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
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::CustomerArchiveParams::Data::Attributes::Reason]
          optional :reason, enum: -> { Unit::Models::CustomerArchiveParams::Data::Attributes::Reason }

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
