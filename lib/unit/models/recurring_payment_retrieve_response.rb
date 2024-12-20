# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringPaymentRetrieveResponse::Data]
      optional :data, -> { Unit::Models::RecurringPaymentRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringPaymentRetrieveResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RecurringPaymentRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringPaymentRetrieveResponse::Data::Type }

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
