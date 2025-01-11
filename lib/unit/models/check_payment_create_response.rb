# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # check_payment_create_response => {
    #   data: Unit::Models::CheckPaymentCreateResponse::Data
    # }
    # ```
    class CheckPaymentCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckPaymentCreateResponse::Data]
      optional :data, -> { Unit::Models::CheckPaymentCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::CheckPaymentCreateResponse::Data::Attributes,
      #   relationships: Unit::Models::CheckPaymentCreateResponse::Data::Relationships,
      #   type: enum: Unit::Models::CheckPaymentCreateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckPaymentCreateResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckPaymentCreateResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Type]
        required :type, enum: -> { Unit::Models::CheckPaymentCreateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CheckPaymentCreateResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckPaymentCreateResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   created_at: Time,
        #   originated: Unit::BooleanModel,
        #   status: enum: Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Status,
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
          #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Status }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute additional_verification_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Attributes::AdditionalVerificationStatus]
          optional :additional_verification_status,
                   enum: -> {
                     Unit::Models::CheckPaymentCreateResponse::Data::Attributes::AdditionalVerificationStatus
                   },
                   api_name: :additionalVerificationStatus

          # @!attribute check_number
          #
          #   @return [String]
          optional :check_number, String, api_name: :checkNumber

          # @!attribute counterparty
          #
          #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty]
          optional :counterparty,
                   -> {
                     Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty
                   }

          # @!attribute counterparty_routing_number
          #
          #   @return [String]
          optional :counterparty_routing_number, String, api_name: :counterpartyRoutingNumber

          # @!attribute delivery_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Attributes::DeliveryStatus]
          optional :delivery_status,
                   enum: -> { Unit::Models::CheckPaymentCreateResponse::Data::Attributes::DeliveryStatus },
                   api_name: :deliveryStatus

          # @!attribute description
          #
          #   @return [String]
          optional :description, String

          # @!attribute expected_delivery
          #
          #   @return [Date]
          optional :expected_delivery, Date, api_name: :expectedDelivery

          # @!attribute expiration_date
          #
          #   @return [Date]
          optional :expiration_date, Date, api_name: :expirationDate

          # @!attribute memo
          #
          #   @return [String]
          optional :memo, String

          # @!attribute on_us
          #
          #   @return [String]
          optional :on_us, String, api_name: :onUs

          # @!attribute on_us_auxiliary
          #
          #   @return [String]
          optional :on_us_auxiliary, String, api_name: :onUsAuxiliary

          # @!attribute pending_review_reasons
          #
          #   @return [Array<Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Attributes::PendingReviewReason>]
          optional :pending_review_reasons,
                   -> {
                     Unit::ArrayOf[enum: Unit::Models::CheckPaymentCreateResponse::Data::Attributes::PendingReviewReason]
                   },
                   api_name: :pendingReviewReasons

          # @!attribute postal_code
          #
          #   @return [String]
          optional :postal_code, String, api_name: :postalCode

          # @!attribute reject_reason
          #
          #   @return [String]
          optional :reject_reason, String, api_name: :rejectReason

          # @!attribute return_cutoff_time
          #
          #   @return [Time]
          optional :return_cutoff_time, Time, api_name: :returnCutoffTime

          # @!attribute return_reason
          #
          #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Attributes::ReturnReason]
          optional :return_reason,
                   enum: -> { Unit::Models::CheckPaymentCreateResponse::Data::Attributes::ReturnReason },
                   api_name: :returnReason

          # @!attribute send_at
          #
          #   @return [Time]
          optional :send_at, Time, api_name: :sendAt

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!attribute tracked_at
          #
          #   @return [Time]
          optional :tracked_at, Time, api_name: :trackedAt

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param originated [Boolean]
          #   # @param status [String]
          #   # @param updated_at [String]
          #   # @param additional_verification_status [String]
          #   # @param check_number [String]
          #   # @param counterparty [Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty]
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
          #   # @param tags [Hash{Symbol => String}]
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
          #
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
          #
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
          #
          # ```ruby
          # counterparty => {
          #   address: Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty::Address,
          #   counterparty_moved: Unit::BooleanModel,
          #   name: String
          # }
          # ```
          class Counterparty < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty::Address]
            optional :address,
                     -> { Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty::Address }

            # @!attribute counterparty_moved
            #
            #   @return [Boolean]
            optional :counterparty_moved, Unit::BooleanModel, api_name: :counterpartyMoved

            # @!attribute name
            #
            #   @return [String]
            optional :name, String

            # @!parse
            #   # @param address [Unit::Models::CheckPaymentCreateResponse::Data::Attributes::Counterparty::Address]
            #   # @param counterparty_moved [Boolean]
            #   # @param name [String]
            #   #
            #   def initialize(address: nil, counterparty_moved: nil, name: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
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
              optional :street2, String

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
          #
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
          #
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
          #
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
        #
        # ```ruby
        # relationships => {
        #   account: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account,
        #   customer: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer,
        #   customers: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers,
        #   transaction: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer }

          # @!attribute customers
          #
          #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers]
          optional :customers, -> { Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers }

          # @!attribute transaction
          #
          #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction]
          optional :transaction,
                   -> {
                     Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer]
          #   # @param customers [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers]
          #   # @param transaction [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account:, customer: nil, customers: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # account => {
          #   data: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Account::Data::Type
                       }

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
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
          #
          # ```ruby
          # customer => {
          #   data: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customer::Data::Type
                       }

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
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
          #
          # ```ruby
          # customers => {
          #   data: -> { Unit::ArrayOf[Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers::Data] === _1 }
          # }
          # ```
          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers::Data>]
            required :data,
                     -> {
                       Unit::ArrayOf[Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers::Data]
                     }

            # @!parse
            #   # @param data [Array<Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Customers::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
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
              optional :id, String

              # @!attribute type
              #
              #   @return [String]
              optional :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          #
          # ```ruby
          # transaction => {
          #   data: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentCreateResponse::Data::Relationships::Transaction::Data::Type
                       }

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
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
        #
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
