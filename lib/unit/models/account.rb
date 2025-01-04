# frozen_string_literal: true

module Unit
  module Models
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
      #
      # ```ruby
      # case enum
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
