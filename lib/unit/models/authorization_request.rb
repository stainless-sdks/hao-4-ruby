# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequest < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::AuthorizationRequest::Type]
      optional :type, enum: -> { Unit::Models::AuthorizationRequest::Type }

      # @!parse
      #   # @param id [String, nil]
      #   # @param type [String, nil]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :purchaseAuthorizationRequest
      #   # ...
      # in :cardTransactionAuthorizationRequest
      #   # ...
      # in :atmAuthorizationRequest
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        PURCHASE_AUTHORIZATION_REQUEST = :purchaseAuthorizationRequest
        CARD_TRANSACTION_AUTHORIZATION_REQUEST = :cardTransactionAuthorizationRequest
        ATM_AUTHORIZATION_REQUEST = :atmAuthorizationRequest

        finalize!
      end
    end
  end
end
