# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # account => {
    #   id: String,
    #   type: enum: Unit::Models::Account::Type
    # }
    # ```
    class Account < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::Account::Type]
      optional :type, enum: -> { Unit::Models::Account::Type }

      # @!parse
      #   # @param id [String]
      #   # @param type [String]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case type
      # in :depositAccount
      #   # ...
      # in :creditAccount
      #   # ...
      # in :walletAccount
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        DEPOSIT_ACCOUNT = :depositAccount
        CREDIT_ACCOUNT = :creditAccount
        WALLET_ACCOUNT = :walletAccount

        finalize!
      end
    end
  end
end
