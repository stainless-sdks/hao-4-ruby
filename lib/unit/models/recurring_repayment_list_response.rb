# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_repayment_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::RecurringRepaymentListResponse::Data] === _1 },
    #   meta: Unit::Models::RecurringRepaymentListResponse::Meta
    # }
    # ```
    class RecurringRepaymentListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::RecurringRepaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::RecurringRepaymentListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::RecurringRepaymentListResponse::Data>]
      #   attr_writer :data

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::RecurringRepaymentListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::RecurringRepaymentListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::RecurringRepaymentListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::RecurringRepaymentListResponse::Data>]
      #   # @param meta [Unit::Models::RecurringRepaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RecurringRepaymentListResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::RecurringRepaymentListResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RecurringRepaymentListResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RecurringRepaymentListResponse::Data::Type]
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

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::RecurringRepaymentListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::RecurringRepaymentListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::RecurringRepaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::RecurringRepaymentListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::RecurringRepaymentListResponse::Meta::Pagination]
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
