# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization_request => {
    #   id: String,
    #   type: enum: Unit::Models::AuthorizationRequest::Type
    # }
    # ```
    class AuthorizationRequest < Unit::BaseModel
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] type
      #
      #   @return [Symbol, Unit::Models::AuthorizationRequest::Type, nil]
      optional :type, enum: -> { Unit::Models::AuthorizationRequest::Type }

      # @!parse
      #   # @return [Symbol, Unit::Models::AuthorizationRequest::Type]
      #   attr_writer :type

      # @!parse
      #   # @param id [String]
      #   # @param type [String]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case type
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
