# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # received_payment_retrieve_response => {
    #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data,
    #   included: -> { Unit::ArrayOf[Unit::Models::ReceivedPaymentRetrieveResponse::Included] === _1 }
    # }
    # ```
    class ReceivedPaymentRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data]
      optional :data, -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::ReceivedPaymentRetrieveResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::ReceivedPaymentRetrieveResponse::Included] }

      # @!parse
      #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data]
      #   # @param included [Array<Unit::Models::ReceivedPaymentRetrieveResponse::Included>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes,
      #   relationships: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships,
      #   type: enum: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ReceivedPaymentRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   company_name: String,
        #   completion_date: String,
        #   counterparty_routing_number: String,
        #   created_at: Time,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute company_name
          #
          #   @return [String]
          required :company_name, String, api_name: :companyName

          # @!attribute completion_date
          #
          #   @return [String]
          required :completion_date, String, api_name: :completionDate

          # @!attribute counterparty_routing_number
          #
          #   @return [String]
          required :counterparty_routing_number, String, api_name: :counterpartyRoutingNumber

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute direction
          #
          #   @return [Symbol, Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes::Direction]
          required :direction,
                   enum: -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes::Direction }

          # @!attribute sec_code
          #
          #   @return [String]
          required :sec_code, String, api_name: :secCode

          # @!attribute status
          #
          #   @return [Symbol, Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes::Status]
          required :status,
                   enum: -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Attributes::Status
                   }

          # @!attribute trace_number
          #
          #   @return [String]
          required :trace_number, String, api_name: :traceNumber

          # @!attribute was_advanced
          #
          #   @return [Boolean]
          required :was_advanced, Unit::BooleanModel, api_name: :wasAdvanced

          # @!attribute addenda
          #
          #   @return [String]
          optional :addenda, String

          # @!attribute is_advaceable
          #
          #   @return [Boolean]
          optional :is_advaceable, Unit::BooleanModel, api_name: :isAdvaceable

          # @!attribute is_advanceable
          #
          #   @return [Boolean]
          optional :is_advanceable, Unit::BooleanModel, api_name: :isAdvanceable

          # @!attribute receiving_entity_name
          #
          #   @return [String]
          optional :receiving_entity_name, String, api_name: :receivingEntityName

          # @!attribute return_reason
          #
          #   @return [String]
          optional :return_reason, String, api_name: :returnReason

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param amount [Integer]
          #   # @param company_name [String]
          #   # @param completion_date [String]
          #   # @param counterparty_routing_number [String]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param direction [String]
          #   # @param sec_code [String]
          #   # @param status [String]
          #   # @param trace_number [String]
          #   # @param was_advanced [Boolean]
          #   # @param addenda [String]
          #   # @param is_advaceable [Boolean]
          #   # @param is_advanceable [Boolean]
          #   # @param receiving_entity_name [String]
          #   # @param return_reason [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(
          #     amount:,
          #     company_name:,
          #     completion_date:,
          #     counterparty_routing_number:,
          #     created_at:,
          #     description:,
          #     direction:,
          #     sec_code:,
          #     status:,
          #     trace_number:,
          #     was_advanced:,
          #     addenda: nil,
          #     is_advaceable: nil,
          #     is_advanceable: nil,
          #     receiving_entity_name: nil,
          #     return_reason: nil,
          #     tags: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case direction
          # in :Debit
          #   # ...
          # in :Credit
          #   # ...
          # end
          # ```
          class Direction < Unit::Enum
            DEBIT = :Debit
            CREDIT = :Credit

            finalize!
          end

          # @example
          # ```ruby
          # case status
          # in :Pending
          #   # ...
          # in :Advanced
          #   # ...
          # in :PendingReview
          #   # ...
          # in :MarkedForReturn
          #   # ...
          # in :Returned
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Status < Unit::Enum
            PENDING = :Pending
            ADVANCED = :Advanced
            PENDING_REVIEW = :PendingReview
            MARKED_FOR_RETURN = :MarkedForReturn
            RETURNED = :Returned
            COMPLETED = :Completed

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account,
        #   customer: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer,
        #   payment_advance_transaction: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction,
        #   receive_payment_transaction: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction,
        #   repay_payment_advance_transaction: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account]
          required :account,
                   -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account
                   }

          # @!attribute customer
          #
          #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer]
          required :customer,
                   -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer
                   }

          # @!attribute payment_advance_transaction
          #
          #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction]
          optional :payment_advance_transaction,
                   -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction
                   },
                   api_name: :paymentAdvanceTransaction

          # @!attribute receive_payment_transaction
          #
          #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction]
          optional :receive_payment_transaction,
                   -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction
                   },
                   api_name: :receivePaymentTransaction

          # @!attribute repay_payment_advance_transaction
          #
          #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction]
          optional :repay_payment_advance_transaction,
                   -> {
                     Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction
                   },
                   api_name: :repayPaymentAdvanceTransaction

          # @!parse
          #   # @param account [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer]
          #   # @param payment_advance_transaction [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction]
          #   # @param receive_payment_transaction [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction]
          #   # @param repay_payment_advance_transaction [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction]
          #   #
          #   def initialize(
          #     account:,
          #     customer:,
          #     payment_advance_transaction: nil,
          #     receive_payment_transaction: nil,
          #     repay_payment_advance_transaction: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data]
            required :data,
                     -> {
                       Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Account::Data::Type
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

          # @example
          # ```ruby
          # customer => {
          #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::Customer::Data::Type
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
              # in :customer
              #   # ...
              # in :businessCustomer
              #   # ...
              # in :individualCustomer
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                CUSTOMER = :customer
                BUSINESS_CUSTOMER = :businessCustomer
                INDIVIDUAL_CUSTOMER = :individualCustomer

                finalize!
              end
            end
          end

          # @example
          # ```ruby
          # payment_advance_transaction => {
          #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction::Data
          # }
          # ```
          class PaymentAdvanceTransaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction::Data]
            required :data,
                     -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction::Data }

            # @!parse
            #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::PaymentAdvanceTransaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: String
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [String]
              required :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # receive_payment_transaction => {
          #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction::Data
          # }
          # ```
          class ReceivePaymentTransaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction::Data]
            required :data,
                     -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction::Data }

            # @!parse
            #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::ReceivePaymentTransaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: String
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [String]
              required :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # repay_payment_advance_transaction => {
          #   data: Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data
          # }
          # ```
          class RepayPaymentAdvanceTransaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data]
            required :data,
                     -> { Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data }

            # @!parse
            #   # @param data [Unit::Models::ReceivedPaymentRetrieveResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: String
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [String]
              required :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end
        end

        # @example
        # ```ruby
        # case type
        # in :achReceivedPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_RECEIVED_PAYMENT = :achReceivedPayment

          finalize!
        end
      end

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown,
      #   type: String
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Object]
        optional :attributes, Unit::Unknown

        # @!attribute relationships
        #
        #   @return [Object]
        optional :relationships, Unit::Unknown

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Object]
        #   # @param relationships [Object]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
