# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_payment_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::RecurringPaymentListResponse::Data] === _1 },
    #   meta: Unit::Models::RecurringPaymentListResponse::Meta
    # }
    # ```
    class RecurringPaymentListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::RecurringPaymentListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      #   attr_writer :data

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::RecurringPaymentListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::RecurringPaymentListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::RecurringPaymentListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      #   # @param meta [Unit::Models::RecurringPaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::RecurringPaymentListResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::RecurringPaymentListResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RecurringPaymentListResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RecurringPaymentListResponse::Data::Type]
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

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::RecurringPaymentListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::RecurringPaymentListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::RecurringPaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::RecurringPaymentListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::RecurringPaymentListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute [r] limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :offset

          # @!attribute [r] total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :total

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
