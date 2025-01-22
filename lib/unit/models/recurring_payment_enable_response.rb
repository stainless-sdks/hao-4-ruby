# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_payment_enable_response => {
    #   data: Unit::Models::RecurringPaymentEnableResponse::Data
    # }
    # ```
    class RecurringPaymentEnableResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::RecurringPaymentEnableResponse::Data, nil]
      optional :data, -> { Unit::Models::RecurringPaymentEnableResponse::Data }

      # @!parse
      #   # @return [Unit::Models::RecurringPaymentEnableResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::RecurringPaymentEnableResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::RecurringPaymentEnableResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::RecurringPaymentEnableResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RecurringPaymentEnableResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RecurringPaymentEnableResponse::Data::Type]
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
