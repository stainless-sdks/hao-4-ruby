# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      # @example
      #
      # ```ruby
      # transaction => {
      #   id: String,
      #   type: enum: Unit::Models::Accounts::Transaction::Type
      # }
      # ```
      class Transaction < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::Accounts::Transaction::Type]
        optional :type, enum: -> { Unit::Models::Accounts::Transaction::Type }

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
        # in :originatedAchTransaction
        #   # ...
        # in :receivedAchTransaction
        #   # ...
        # in :returnedAchTransaction
        #   # ...
        # in :returnedReceivedAchTransaction
        #   # ...
        # in :dishonoredAchTransaction
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Type < Unit::Enum
          ORIGINATED_ACH_TRANSACTION = :originatedAchTransaction
          RECEIVED_ACH_TRANSACTION = :receivedAchTransaction
          RETURNED_ACH_TRANSACTION = :returnedAchTransaction
          RETURNED_RECEIVED_ACH_TRANSACTION = :returnedReceivedAchTransaction
          DISHONORED_ACH_TRANSACTION = :dishonoredAchTransaction
          PURCHASE_TRANSACTION = :purchaseTransaction
          BOOK_TRANSACTION = :bookTransaction
          ATM_TRANSACTION = :atmTransaction
          FEE_TRANSACTION = :feeTransaction
          CARD_TRANSACTION = :cardTransaction
          RELEASE_TRANSACTION = :releaseTransaction
          WIRE_TRANSACTION = :wireTransaction
          INTEREST_SHARE_TRANSACTION = :interestShareTransaction
          INTEREST_TRANSACTION = :interestTransaction
          ADJUSTMENT_TRANSACTION = :adjustmentTransaction
          DISPUTE_TRANSACTION = :disputeTransaction
          CHECK_DEPOSIT_TRANSACTION = :checkDepositTransaction
          RETURNED_CHECK_DEPOSIT_TRANSACTION = :returnedCheckDepositTransaction
          SPONSORED_INTEREST_TRANSACTION = :sponsoredInterestTransaction
          PAYMENT_ADVANCE_TRANSACTION = :paymentAdvanceTransaction
          REPAID_PAYMENT_ADVANCE_TRANSACTION = :repaidPaymentAdvanceTransaction
          CHARGEBACK_TRANSACTION = :chargebackTransaction
          REWARD_TRANSACTION = :rewardTransaction
          NEGATIVE_BALANCE_COVERAGE_TRANSACTION = :negativeBalanceCoverageTransaction
          ACCOUNT_LOW_BALANCE_CLOSURE_TRANSACTION = :accountLowBalanceClosureTransaction
          BANK_REPAYMENT_TRANSACTION = :bankRepaymentTransaction
          CASH_DEPOSIT_TRANSACTION = :cashDepositTransaction
          CUSTOMER_REPAYMENT_TRANSACTION = :customerRepaymentTransaction
          CUSTOMER_REPAYMENT_RETURNED_TRANSACTION = :customerRepaymentReturnedTransaction
          CHECK_PAYMENT_TRANSACTION = :checkPaymentTransaction
          RETURNED_CHECK_PAYMENT_TRANSACTION = :returnedCheckPaymentTransaction
          CARD_REVERSAL_TRANSACTION = :cardReversalTransaction
          FEE_REVERSAL_TRANSACTION = :feeReversalTransaction
          PUSH_TO_CARD_REVERSAL_TRANSACTION = :pushToCardReversalTransaction

          finalize!
        end
      end
    end
  end
end
