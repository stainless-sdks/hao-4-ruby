# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # recurring_repayment_disable_response => {
    #   data: Unit::Models::RecurringRepaymentDisableResponse::Data
    # }
    # ```
    class RecurringRepaymentDisableResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RecurringRepaymentDisableResponse::Data]
      optional :data, -> { Unit::Models::RecurringRepaymentDisableResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RecurringRepaymentDisableResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::RecurringRepaymentDisableResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RecurringRepaymentDisableResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RecurringRepaymentDisableResponse::Data::Type }

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
