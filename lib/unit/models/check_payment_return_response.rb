# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # check_payment_return_response => {
    #   data: Unit::Models::CheckPaymentReturnResponse::Data
    # }
    # ```
    class CheckPaymentReturnResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CheckPaymentReturnResponse::Data, nil]
      optional :data, -> { Unit::Models::CheckPaymentReturnResponse::Data }

      # @!parse
      #   # @return [Unit::Models::CheckPaymentReturnResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentReturnResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::CheckPaymentReturnResponse::Data::Attributes,
      #   relationships: Unit::Models::CheckPaymentReturnResponse::Data::Relationships,
      #   type: enum: Unit::Models::CheckPaymentReturnResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckPaymentReturnResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckPaymentReturnResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Type]
        required :type, enum: -> { Unit::Models::CheckPaymentReturnResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CheckPaymentReturnResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckPaymentReturnResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   created_at: Time,
        #   originated: Unit::BooleanModel,
        #   status: enum: Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Status,
        #   updated_at: Time,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute originated
          #
          #   @return [Boolean]
          required :originated, Unit::BooleanModel

          # @!attribute status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Status }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute [r] additional_verification_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::AdditionalVerificationStatus, nil]
          optional :additional_verification_status,
                   enum: -> {
                     Unit::Models::CheckPaymentReturnResponse::Data::Attributes::AdditionalVerificationStatus
                   },
                   api_name: :additionalVerificationStatus

          # @!parse
          #   # @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::AdditionalVerificationStatus]
          #   attr_writer :additional_verification_status

          # @!attribute [r] check_number
          #
          #   @return [String, nil]
          optional :check_number, String, api_name: :checkNumber

          # @!parse
          #   # @return [String]
          #   attr_writer :check_number

          # @!attribute [r] counterparty
          #
          #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty, nil]
          optional :counterparty,
                   -> {
                     Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty
                   }

          # @!parse
          #   # @return [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty]
          #   attr_writer :counterparty

          # @!attribute [r] counterparty_routing_number
          #
          #   @return [String, nil]
          optional :counterparty_routing_number, String, api_name: :counterpartyRoutingNumber

          # @!parse
          #   # @return [String]
          #   attr_writer :counterparty_routing_number

          # @!attribute [r] delivery_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::DeliveryStatus, nil]
          optional :delivery_status,
                   enum: -> { Unit::Models::CheckPaymentReturnResponse::Data::Attributes::DeliveryStatus },
                   api_name: :deliveryStatus

          # @!parse
          #   # @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::DeliveryStatus]
          #   attr_writer :delivery_status

          # @!attribute [r] description
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] expected_delivery
          #
          #   @return [Date, nil]
          optional :expected_delivery, Date, api_name: :expectedDelivery

          # @!parse
          #   # @return [Date]
          #   attr_writer :expected_delivery

          # @!attribute [r] expiration_date
          #
          #   @return [Date, nil]
          optional :expiration_date, Date, api_name: :expirationDate

          # @!parse
          #   # @return [Date]
          #   attr_writer :expiration_date

          # @!attribute [r] memo
          #
          #   @return [String, nil]
          optional :memo, String

          # @!parse
          #   # @return [String]
          #   attr_writer :memo

          # @!attribute [r] on_us
          #
          #   @return [String, nil]
          optional :on_us, String, api_name: :onUs

          # @!parse
          #   # @return [String]
          #   attr_writer :on_us

          # @!attribute [r] on_us_auxiliary
          #
          #   @return [String, nil]
          optional :on_us_auxiliary, String, api_name: :onUsAuxiliary

          # @!parse
          #   # @return [String]
          #   attr_writer :on_us_auxiliary

          # @!attribute [r] pending_review_reasons
          #
          #   @return [Array<Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::PendingReviewReason>]
          optional :pending_review_reasons,
                   -> {
                     Unit::ArrayOf[enum: Unit::Models::CheckPaymentReturnResponse::Data::Attributes::PendingReviewReason]
                   },
                   api_name: :pendingReviewReasons

          # @!parse
          #   # @return [Array<Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::PendingReviewReason>]
          #   attr_writer :pending_review_reasons

          # @!attribute [r] postal_code
          #
          #   @return [String, nil]
          optional :postal_code, String, api_name: :postalCode

          # @!parse
          #   # @return [String]
          #   attr_writer :postal_code

          # @!attribute [r] reject_reason
          #
          #   @return [String, nil]
          optional :reject_reason, String, api_name: :rejectReason

          # @!parse
          #   # @return [String]
          #   attr_writer :reject_reason

          # @!attribute [r] return_cutoff_time
          #
          #   @return [Time, nil]
          optional :return_cutoff_time, Time, api_name: :returnCutoffTime

          # @!parse
          #   # @return [Time]
          #   attr_writer :return_cutoff_time

          # @!attribute [r] return_reason
          #
          #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::ReturnReason, nil]
          optional :return_reason,
                   enum: -> { Unit::Models::CheckPaymentReturnResponse::Data::Attributes::ReturnReason },
                   api_name: :returnReason

          # @!parse
          #   # @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Attributes::ReturnReason]
          #   attr_writer :return_reason

          # @!attribute [r] send_at
          #
          #   @return [Time, nil]
          optional :send_at, Time, api_name: :sendAt

          # @!parse
          #   # @return [Time]
          #   attr_writer :send_at

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!attribute [r] tracked_at
          #
          #   @return [Time, nil]
          optional :tracked_at, Time, api_name: :trackedAt

          # @!parse
          #   # @return [Time]
          #   attr_writer :tracked_at

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param originated [Boolean]
          #   # @param status [String]
          #   # @param updated_at [String]
          #   # @param additional_verification_status [String]
          #   # @param check_number [String]
          #   # @param counterparty [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty]
          #   # @param counterparty_routing_number [String]
          #   # @param delivery_status [String]
          #   # @param description [String]
          #   # @param expected_delivery [String]
          #   # @param expiration_date [String]
          #   # @param memo [String]
          #   # @param on_us [String]
          #   # @param on_us_auxiliary [String]
          #   # @param pending_review_reasons [Array<String>]
          #   # @param postal_code [String]
          #   # @param reject_reason [String]
          #   # @param return_cutoff_time [String]
          #   # @param return_reason [String]
          #   # @param send_at [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   # @param tracked_at [String]
          #   #
          #   def initialize(
          #     amount:,
          #     created_at:,
          #     originated:,
          #     status:,
          #     updated_at:,
          #     additional_verification_status: nil,
          #     check_number: nil,
          #     counterparty: nil,
          #     counterparty_routing_number: nil,
          #     delivery_status: nil,
          #     description: nil,
          #     expected_delivery: nil,
          #     expiration_date: nil,
          #     memo: nil,
          #     on_us: nil,
          #     on_us_auxiliary: nil,
          #     pending_review_reasons: nil,
          #     postal_code: nil,
          #     reject_reason: nil,
          #     return_cutoff_time: nil,
          #     return_reason: nil,
          #     send_at: nil,
          #     tags: nil,
          #     tracked_at: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case status
          # in :MarkedForReturn
          #   # ...
          # in :Returned
          #   # ...
          # in :Processed
          #   # ...
          # in :PendingReview
          #   # ...
          # end
          # ```
          class Status < Unit::Enum
            MARKED_FOR_RETURN = :MarkedForReturn
            RETURNED = :Returned
            PROCESSED = :Processed
            PENDING_REVIEW = :PendingReview

            finalize!
          end

          # @example
          # ```ruby
          # case additional_verification_status
          # in :Required
          #   # ...
          # in :NotRequired
          #   # ...
          # in :Approved
          #   # ...
          # end
          # ```
          class AdditionalVerificationStatus < Unit::Enum
            REQUIRED = :Required
            NOT_REQUIRED = :NotRequired
            APPROVED = :Approved

            finalize!
          end

          # @example
          # ```ruby
          # counterparty => {
          #   address: Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty::Address,
          #   counterparty_moved: Unit::BooleanModel,
          #   name: String
          # }
          # ```
          class Counterparty < Unit::BaseModel
            # @!attribute [r] address
            #
            #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty::Address, nil]
            optional :address,
                     -> { Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty::Address }

            # @!parse
            #   # @return [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty::Address]
            #   attr_writer :address

            # @!attribute [r] counterparty_moved
            #
            #   @return [Boolean, nil]
            optional :counterparty_moved, Unit::BooleanModel, api_name: :counterpartyMoved

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :counterparty_moved

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!parse
            #   # @param address [Unit::Models::CheckPaymentReturnResponse::Data::Attributes::Counterparty::Address]
            #   # @param counterparty_moved [Boolean]
            #   # @param name [String]
            #   #
            #   def initialize(address: nil, counterparty_moved: nil, name: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String, nil?: true

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # case delivery_status
          # in :Mailed
          #   # ...
          # in :InLocalArea
          #   # ...
          # in :Delivered
          #   # ...
          # in :Rerouted
          #   # ...
          # in :ReturnedToSender
          #   # ...
          # end
          # ```
          class DeliveryStatus < Unit::Enum
            MAILED = :Mailed
            IN_LOCAL_AREA = :InLocalArea
            DELIVERED = :Delivered
            REROUTED = :Rerouted
            RETURNED_TO_SENDER = :ReturnedToSender

            finalize!
          end

          # @example
          # ```ruby
          # case pending_review_reason
          # in :NameMissMatch
          #   # ...
          # in :SoftLimit
          #   # ...
          # end
          # ```
          class PendingReviewReason < Unit::Enum
            NAME_MISS_MATCH = :NameMissMatch
            SOFT_LIMIT = :SoftLimit

            finalize!
          end

          # @example
          # ```ruby
          # case return_reason
          # in :InsufficientFunds
          #   # ...
          # in :AccountClosed
          #   # ...
          # in :AlteredCheck
          #   # ...
          # in :ForgedSignature
          #   # ...
          # in :PostdatedCheck
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class ReturnReason < Unit::Enum
            INSUFFICIENT_FUNDS = :InsufficientFunds
            ACCOUNT_CLOSED = :AccountClosed
            ALTERED_CHECK = :AlteredCheck
            FORGED_SIGNATURE = :ForgedSignature
            POSTDATED_CHECK = :PostdatedCheck
            STOP_PAYMENT_ORDER = :StopPaymentOrder
            UNAUTHORIZED_DEBIT = :UnauthorizedDebit
            WRONG_AMOUNT = :WrongAmount
            DUPLICATE_PAYMENT = :DuplicatePayment
            MISSING_SIGNATURE = :MissingSignature
            IRREGULAR_ENDORSEMENT = :IrregularEndorsement
            OTHER = :Other

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account,
        #   customer: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer,
        #   customers: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers,
        #   transaction: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account }

          # @!attribute [r] customer
          #
          #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer, nil]
          optional :customer, -> { Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer }

          # @!parse
          #   # @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer]
          #   attr_writer :customer

          # @!attribute [r] customers
          #
          #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers, nil]
          optional :customers, -> { Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers }

          # @!parse
          #   # @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers]
          #   attr_writer :customers

          # @!attribute [r] transaction
          #
          #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction, nil]
          optional :transaction,
                   -> {
                     Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction]
          #   attr_writer :transaction

          # @!parse
          #   # @param account [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer]
          #   # @param customers [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers]
          #   # @param transaction [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account:, customer: nil, customers: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Account::Data::Type
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
          #   data: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customer::Data::Type
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
          # customers => {
          #   data: -> { Unit::ArrayOf[Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers::Data] === _1 }
          # }
          # ```
          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers::Data>]
            required :data,
                     -> {
                       Unit::ArrayOf[Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers::Data]
                     }

            # @!parse
            #   # @param data [Array<Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Customers::Data>]
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
              # @!attribute [r] id
              #
              #   @return [String, nil]
              optional :id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :id

              # @!attribute [r] type
              #
              #   @return [String, nil]
              optional :type, String

              # @!parse
              #   # @return [String]
              #   attr_writer :type

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # transaction => {
          #   data: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentReturnResponse::Data::Relationships::Transaction::Data::Type
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
              # in :transaction
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                TRANSACTION = :transaction

                finalize!
              end
            end
          end
        end

        # @example
        # ```ruby
        # case type
        # in :checkPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_PAYMENT = :checkPayment

          finalize!
        end
      end
    end
  end
end
