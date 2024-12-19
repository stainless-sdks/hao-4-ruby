# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      class RepaymentInformationRetrieveResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data]
        optional :data, -> { Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data, nil]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data::Attributes]
          required :attributes,
                   -> { Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data::Type]
          required :type,
                   enum: -> {
                     Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::Accounts::RepaymentInformationRetrieveResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute initiated_repayments
            #
            #   @return [Integer]
            required :initiated_repayments, Integer, api_name: :initiatedRepayments

            # @!attribute next_repayment_due_date
            #
            #   @return [Date]
            required :next_repayment_due_date, Date, api_name: :nextRepaymentDueDate

            # @!attribute remaining_amount_due
            #
            #   @return [Integer]
            required :remaining_amount_due, Integer, api_name: :remainingAmountDue

            # @!attribute remaining_amount_overdue
            #
            #   @return [Integer]
            required :remaining_amount_overdue, Integer, api_name: :remainingAmountOverdue

            # @!attribute statement_period_end
            #
            #   @return [Date]
            required :statement_period_end, Date, api_name: :statementPeriodEnd

            # @!attribute statement_period_start
            #
            #   @return [Date]
            required :statement_period_start, Date, api_name: :statementPeriodStart

            # @!parse
            #   # @param initiated_repayments [Integer]
            #   # @param next_repayment_due_date [String]
            #   # @param remaining_amount_due [Integer]
            #   # @param remaining_amount_overdue [Integer]
            #   # @param statement_period_end [String]
            #   # @param statement_period_start [String]
            #   #
            #   def initialize(
            #     initiated_repayments:,
            #     next_repayment_due_date:,
            #     remaining_amount_due:,
            #     remaining_amount_overdue:,
            #     statement_period_end:,
            #     statement_period_start:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :creditAccountRepaymentInformation
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CREDIT_ACCOUNT_REPAYMENT_INFORMATION = :creditAccountRepaymentInformation
          end
        end
      end
    end
  end
end
