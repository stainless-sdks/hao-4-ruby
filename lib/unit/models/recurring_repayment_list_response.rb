# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::RecurringRepaymentListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::RecurringRepaymentListResponse::Data }]

      # @!attribute meta
      #
      #   @return [Unit::Models::RecurringRepaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::RecurringRepaymentListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::RecurringRepaymentListResponse::Data>, nil]
      #   # @param meta [Unit::Models::RecurringRepaymentListResponse::Meta, nil]
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
        #   @return [Symbol, Unit::Models::RecurringRepaymentListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringRepaymentListResponse::Data::Type }

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
        # in :recurringAchRepayment
        #   # ...
        # in :recurringBookRepayment
        #   # ...
        # in :recurringCapitalPartnerAchRepayment
        #   # ...
        # in :recurrinCapitalPartnerBookRepayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          RECURRING_ACH_REPAYMENT = :recurringAchRepayment
          RECURRING_BOOK_REPAYMENT = :recurringBookRepayment
          RECURRING_CAPITAL_PARTNER_ACH_REPAYMENT = :recurringCapitalPartnerAchRepayment
          RECURRIN_CAPITAL_PARTNER_BOOK_REPAYMENT = :recurrinCapitalPartnerBookRepayment

          finalize!
        end
      end

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::RecurringRepaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::RecurringRepaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::RecurringRepaymentListResponse::Meta::Pagination, nil]
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
