# frozen_string_literal: true

module Unit
  module Models
    class ReturnReturnParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ReturnReturnParams::Data]
      required :data, -> { Unit::Models::ReturnReturnParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ReturnReturnParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::ReturnReturnParams::Data::Attributes,
      #   relationships: Unit::Models::ReturnReturnParams::Data::Relationships,
      #   type: Unit::Models::ReturnReturnParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::ReturnReturnParams::Data::Attributes]
        required :attributes, -> { Unit::Models::ReturnReturnParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::ReturnReturnParams::Data::Relationships]
        required :relationships, -> { Unit::Models::ReturnReturnParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ReturnReturnParams::Data::Type]
        required :type, enum: -> { Unit::Models::ReturnReturnParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::ReturnReturnParams::Data::Attributes]
        #   # @param relationships [Unit::Models::ReturnReturnParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   reason: Unit::Models::ReturnReturnParams::Data::Attributes::Reason
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute reason
          #
          #   @return [Symbol, Unit::Models::ReturnReturnParams::Data::Attributes::Reason]
          required :reason, enum: -> { Unit::Models::ReturnReturnParams::Data::Attributes::Reason }

          # @!parse
          #   # @param reason [String]
          #   #
          #   def initialize(reason:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case reason
          # in :InsufficientFunds
          #   # ...
          # in :AccountClosed
          #   # ...
          # in :NoAccount
          #   # ...
          # in :InvalidAccountNumberStructure
          #   # ...
          # in :UnauthorizedDebitToConsumer
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Unit::Enum
            INSUFFICIENT_FUNDS = :InsufficientFunds
            ACCOUNT_CLOSED = :AccountClosed
            NO_ACCOUNT = :NoAccount
            INVALID_ACCOUNT_NUMBER_STRUCTURE = :InvalidAccountNumberStructure
            UNAUTHORIZED_DEBIT_TO_CONSUMER = :UnauthorizedDebitToConsumer
            RETURNED_PER_ODFI_REQUEST = :ReturnedPerOdfiRequest
            AUTHORIZATION_REVOKED_BY_CUSTOMER = :AuthorizationRevokedByCustomer
            PAYMENT_STOPPED = :PaymentStopped
            UNCOLLECTED_FUNDS = :UncollectedFunds
            CUSTOMER_ADVISES_NOT_AUTHORIZED = :CustomerAdvisesNotAuthorized
            CHECK_TRUNCATION_ENTRY_RETURNED = :CheckTruncationEntryReturned
            BRANCH_SOLD_TO_ANOTHER_DFI = :BranchSoldToAnotherDfi
            RDFI_NOT_QUALIFIED_TO_PARTICIPATE = :RdfiNotQualifiedToParticipate
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE = :RepresentativePayeeDeceasedOrUnableToContinue
            BENEFICIARY_OR_BANK_ACCOUNT_HOLDER_DECEASED = :BeneficiaryOrBankAccountHolderDeceased
            ACCOUNT_FROZEN = :AccountFrozen
            FILE_RECORD_EDIT_CRITERIA = :FileRecordEditCriteria
            IMPROPER_EFFECTIVE_ENTRY_DATE = :ImproperEffectiveEntryDate
            AMOUNT_FIELD_ERROR = :AmountFieldError
            NON_TRANSACTION_ACCOUNT = :NonTransactionAccount
            INVALID_COMPANY_IDENTIFICATION = :InvalidCompanyIdentification
            INVALID_INDIVIDUAL_ID_NUMBER = :InvalidIndividualIdNumber
            CREDIT_ENTRY_REFUSED_BY_RECEIVER = :CreditEntryRefusedByReceiver
            DUPLICATE_ENTRY = :DuplicateEntry
            ADDENDA_ERROR = :AddendaError
            MANDATORY_FIELD_ERROR = :MandatoryFieldError
            TRACE_NUMBER_ERROR = :TraceNumberError
            ROUTING_NUMBER_CHECK_DIGIT_ERROR = :RoutingNumberCheckDigitError
            CORPORATE_CUSTOMER_ADVISES_NOT_AUTHORIZED = :CorporateCustomerAdvisesNotAuthorized
            RDFI_NOT_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM = :RdfiNotParticipantInCheckTruncationProgram
            PERMISSIBLE_RETURN_ENTRY = :PermissibleReturnEntry
            RDFI_NON_SETTLEMENT = :RdfiNonSettlement
            RETURN_OF_XCK_ENTRY = :ReturnOfXckEntry
            LIMITED_PARTICIPATION_DFI = :LimitedParticipationDfi
            RETURN_OF_IMPROPER_DEBIT_ENTRY = :ReturnOfImproperDebitEntry
            RETURN_OF_IMPROPER_CREDIT_ENTRY = :ReturnOfImproperCreditEntry
            SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT = :SourceDocumentPresentedForPayment
            STOP_PAYMENT_ON_SOURCE_DOCUMENT = :StopPaymentOnSourceDocument
            IMPROPER_SOURCE_DOCUMENT = :ImproperSourceDocument
            INVALID_INDIVIDUAL_OR_COMPANY_NAME = :InvalidIndividualOrCompanyName
            INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT = :IncorrectlyCodedOutboundInternationalPayment

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::ReturnReturnParams::Data::Relationships::Account
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::ReturnReturnParams::Data::Relationships::Account]
          required :account, -> { Unit::Models::ReturnReturnParams::Data::Relationships::Account }

          # @!parse
          #   # @param account [Unit::Models::ReturnReturnParams::Data::Relationships::Account]
          #   #
          #   def initialize(account:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ReturnReturnParams::Data::Relationships::Account::Data::Type
                       }

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case type
              # in :account
              #   # ...
              # in :depositAccount
              #   # ...
              # in :creditAccount
              #   # ...
              # in :batchAccount
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                ACCOUNT = :account
                DEPOSIT_ACCOUNT = :depositAccount
                CREDIT_ACCOUNT = :creditAccount
                BATCH_ACCOUNT = :batchAccount

                finalize!
              end
            end
          end
        end

        # @example
        # ```ruby
        # case type
        # in :atmTransaction
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ATM_TRANSACTION = :atmTransaction

          finalize!
        end
      end
    end
  end
end
