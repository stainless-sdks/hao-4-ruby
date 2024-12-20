# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentEnableResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringRepaymentEnableResponse::Data]
      optional :data, -> { Unit::Models::RecurringRepaymentEnableResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringRepaymentEnableResponse::Data, nil]
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
        #   @return [Symbol, Unit::Models::RecurringRepaymentEnableResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringRepaymentEnableResponse::Data::Type }

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
    end
  end
end
