# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_payment_disable_response => {
    #   data: Unit::Models::RecurringPaymentDisableResponse::Data
    # }
    # ```
    class RecurringPaymentDisableResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringPaymentDisableResponse::Data]
      optional :data, -> { Unit::Models::RecurringPaymentDisableResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringPaymentDisableResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RecurringPaymentDisableResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RecurringPaymentDisableResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringPaymentDisableResponse::Data::Type }

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
