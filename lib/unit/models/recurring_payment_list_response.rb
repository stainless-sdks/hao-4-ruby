# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # recurring_payment_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::RecurringPaymentListResponse::Data] === _1 },
    #   meta: Unit::Models::RecurringPaymentListResponse::Meta
    # }
    # ```
    class RecurringPaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::RecurringPaymentListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Unit::Models::RecurringPaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::RecurringPaymentListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      #   # @param meta [Unit::Models::RecurringPaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RecurringPaymentListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RecurringPaymentListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringPaymentListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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

      # @example
      #
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::RecurringPaymentListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::RecurringPaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::RecurringPaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::RecurringPaymentListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute limit
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          optional :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          optional :total, Integer

          # @!parse
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   # @param total [Integer]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
