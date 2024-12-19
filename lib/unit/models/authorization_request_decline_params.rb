# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestDeclineParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AuthorizationRequestDeclineParams::Data]
      optional :data, -> { Unit::Models::AuthorizationRequestDeclineParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AuthorizationRequestDeclineParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::AuthorizationRequestDeclineParams::Data::Attributes]
        required :attributes, -> { Unit::Models::AuthorizationRequestDeclineParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AuthorizationRequestDeclineParams::Data::Type]
        required :type, enum: -> { Unit::Models::AuthorizationRequestDeclineParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::AuthorizationRequestDeclineParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::AuthorizationRequestDeclineParams::Data::Attributes::Reason]
          optional :reason,
                   enum: -> {
                     Unit::Models::AuthorizationRequestDeclineParams::Data::Attributes::Reason
                   }

          # @!parse
          #   # @param reason [String, nil]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :AccountClosed
          #   # ...
          # in :CardExceedsAmountLimit
          #   # ...
          # in :DoNotHonor
          #   # ...
          # in :InsufficientFunds
          #   # ...
          # in :InvalidMerchant
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Unit::Enum
            ACCOUNT_CLOSED = :AccountClosed
            CARD_EXCEEDS_AMOUNT_LIMIT = :CardExceedsAmountLimit
            DO_NOT_HONOR = :DoNotHonor
            INSUFFICIENT_FUNDS = :InsufficientFunds
            INVALID_MERCHANT = :InvalidMerchant
            REFER_TO_CARD_ISSUER = :ReferToCardIssuer
            RESTRICTED_CARD = :RestrictedCard
            TRANSACTION_NOT_PERMITTED_TO_CARDHOLDER = :TransactionNotPermittedToCardholder
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :declineAuthorizationRequest
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          DECLINE_AUTHORIZATION_REQUEST = :declineAuthorizationRequest
        end
      end
    end
  end
end
