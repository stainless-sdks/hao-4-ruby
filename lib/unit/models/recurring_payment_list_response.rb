# frozen_string_literal: true

module Unit
  module Models
    class RecurringPaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::RecurringPaymentListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::RecurringPaymentListResponse::Data }]

      # @!attribute meta
      #
      #   @return [Unit::Models::RecurringPaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::RecurringPaymentListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::RecurringPaymentListResponse::Data>, nil]
      #   # @param meta [Unit::Models::RecurringPaymentListResponse::Meta, nil]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        end
      end

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::RecurringPaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::RecurringPaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::RecurringPaymentListResponse::Meta::Pagination, nil]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

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
          #   # @param limit [Integer, nil]
          #   # @param offset [Integer, nil]
          #   # @param total [Integer, nil]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
