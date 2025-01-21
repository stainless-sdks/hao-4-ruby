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
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] type
      #
      #   @return [Symbol, Unit::Models::Card::Type, nil]
      optional :type, enum: -> { Unit::Models::Card::Type }

      # @!parse
      #   # @return [Symbol, Unit::Models::Card::Type]
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
