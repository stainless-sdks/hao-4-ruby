# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # recurring_repayment_retrieve_response => {
    #   data: Unit::Models::RecurringRepaymentRetrieveResponse::Data
    # }
    # ```
    class RecurringRepaymentRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::RecurringRepaymentRetrieveResponse::Data, nil]
      optional :data, -> { Unit::Models::RecurringRepaymentRetrieveResponse::Data }

      # @!parse
      #   # @return [Unit::Models::RecurringRepaymentRetrieveResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::RecurringRepaymentRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RecurringRepaymentRetrieveResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::RecurringRepaymentRetrieveResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RecurringRepaymentRetrieveResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RecurringRepaymentRetrieveResponse::Data::Type]
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
    end
  end
end
