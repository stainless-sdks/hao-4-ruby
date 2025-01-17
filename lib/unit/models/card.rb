# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # card => {
    #   id: String,
    #   type: enum: Unit::Models::Card::Type
    # }
    # ```
    class Card < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::Card::Type]
      optional :type, enum: -> { Unit::Models::Card::Type }

      # @!parse
      #   # @param id [String]
      #   # @param type [String]
      #   #
      #   def initialize(id: nil, type: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case type
      # in :businessDebitCard
      #   # ...
      # in :individualDebitCard
      #   # ...
      # in :businessVirtualDebitCard
      #   # ...
      # in :individualVirtualDebitCard
      #   # ...
      # in :businessCreditCard
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Type < Unit::Enum
        BUSINESS_DEBIT_CARD = :businessDebitCard
        INDIVIDUAL_DEBIT_CARD = :individualDebitCard
        BUSINESS_VIRTUAL_DEBIT_CARD = :businessVirtualDebitCard
        INDIVIDUAL_VIRTUAL_DEBIT_CARD = :individualVirtualDebitCard
        BUSINESS_CREDIT_CARD = :businessCreditCard
        BUSINESS_VIRTUAL_CREDIT_CARD = :businessVirtualCreditCard

        finalize!
      end
    end
  end
end
