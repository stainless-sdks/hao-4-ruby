# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_payment_create_response => {
    #   data: Unit::Models::RecurringPaymentCreateResponse::Data
    # }
    # ```
    class RecurringPaymentCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringPaymentCreateResponse::Data]
      optional :data, -> { Unit::Models::RecurringPaymentCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringPaymentCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RecurringPaymentCreateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RecurringPaymentCreateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringPaymentCreateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :recurringCreditAchPayment
        #   # ...
        # in :recurringDebitAchPayment
        #   # ...
        # in :recurringCreditBookPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          RECURRING_CREDIT_ACH_PAYMENT = :recurringCreditAchPayment
          RECURRING_DEBIT_ACH_PAYMENT = :recurringDebitAchPayment
          RECURRING_CREDIT_BOOK_PAYMENT = :recurringCreditBookPayment

          finalize!
        end
      end
    end
  end
end
