# frozen_string_literal: true

module Unit
  module Models
    module Sandbox
      # @example
      # ```ruby
      # received_ach_payment_create_response => {
      #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data
      # }
      # ```
      class ReceivedACHPaymentCreateResponse < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data, nil]
        optional :data, -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data }

        # @!parse
        #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   id: String,
        #   attributes: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes,
        #   relationships: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships,
        #   type: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Type
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

          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes, nil]
          optional :attributes,
                   -> {
                     Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes
                   }

          # @!parse
          #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] relationships
          #
          #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships, nil]
          optional :relationships,
                   -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships }

          # @!parse
          #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships]
          #   attr_writer :relationships

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param id [String]
          #   # @param attributes [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes]
          #   # @param relationships [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships]
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
            #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes::Direction]
            required :direction,
                     enum: -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes::Direction
                     }

            # @!attribute sec_code
            #
            #   @return [String]
            required :sec_code, String, api_name: :secCode

            # @!attribute status
            #
            #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes::Status]
            required :status,
                     enum: -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Attributes::Status
                     }

            # @!attribute trace_number
            #
            #   @return [String]
            required :trace_number, String, api_name: :traceNumber

            # @!attribute was_advanced
            #
            #   @return [Boolean]
            required :was_advanced, Unit::BooleanModel, api_name: :wasAdvanced

            # @!attribute [r] addenda
            #
            #   @return [String, nil]
            optional :addenda, String

            # @!parse
            #   # @return [String]
            #   attr_writer :addenda

            # @!attribute [r] is_advaceable
            #
            #   @return [Boolean, nil]
            optional :is_advaceable, Unit::BooleanModel, api_name: :isAdvaceable

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_advaceable

            # @!attribute [r] is_advanceable
            #
            #   @return [Boolean, nil]
            optional :is_advanceable, Unit::BooleanModel, api_name: :isAdvanceable

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_advanceable

            # @!attribute [r] receiving_entity_name
            #
            #   @return [String, nil]
            optional :receiving_entity_name, String, api_name: :receivingEntityName

            # @!parse
            #   # @return [String]
            #   attr_writer :receiving_entity_name

            # @!attribute [r] return_reason
            #
            #   @return [String, nil]
            optional :return_reason, String, api_name: :returnReason

            # @!parse
            #   # @return [String]
            #   attr_writer :return_reason

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

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
          #   account: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account,
          #   customer: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer,
          #   payment_advance_transaction: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction,
          #   receive_payment_transaction: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction,
          #   repay_payment_advance_transaction: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account]
            required :account,
                     -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer }

            # @!attribute [r] payment_advance_transaction
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction, nil]
            optional :payment_advance_transaction,
                     -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction
                     },
                     api_name: :paymentAdvanceTransaction

            # @!parse
            #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction]
            #   attr_writer :payment_advance_transaction

            # @!attribute [r] receive_payment_transaction
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction, nil]
            optional :receive_payment_transaction,
                     -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction
                     },
                     api_name: :receivePaymentTransaction

            # @!parse
            #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction]
            #   attr_writer :receive_payment_transaction

            # @!attribute [r] repay_payment_advance_transaction
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction, nil]
            optional :repay_payment_advance_transaction,
                     -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction
                     },
                     api_name: :repayPaymentAdvanceTransaction

            # @!parse
            #   # @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction]
            #   attr_writer :repay_payment_advance_transaction

            # @!parse
            #   # @param account [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account]
            #   # @param customer [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer]
            #   # @param payment_advance_transaction [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction]
            #   # @param receive_payment_transaction [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction]
            #   # @param repay_payment_advance_transaction [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction]
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
            #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Account::Data::Type
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
            #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data
            # }
            # ```
            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::Customer::Data::Type
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
            #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction::Data
            # }
            # ```
            class PaymentAdvanceTransaction < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::PaymentAdvanceTransaction::Data]
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
            #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction::Data
            # }
            # ```
            class ReceivePaymentTransaction < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::ReceivePaymentTransaction::Data]
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
            #   data: Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data
            # }
            # ```
            class RepayPaymentAdvanceTransaction < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateResponse::Data::Relationships::RepayPaymentAdvanceTransaction::Data]
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
      end
    end
  end
end
