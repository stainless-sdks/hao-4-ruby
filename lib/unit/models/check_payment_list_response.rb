# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::CheckPaymentListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::CheckPaymentListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::CheckPaymentListResponse::Data>, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckPaymentListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckPaymentListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::CheckPaymentListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CheckPaymentListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckPaymentListResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

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
          #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::CheckPaymentListResponse::Data::Attributes::Status }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute additional_verification_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Attributes::AdditionalVerificationStatus]
          optional :additional_verification_status,
                   api_name: :additionalVerificationStatus,
                   enum: -> {
                     Unit::Models::CheckPaymentListResponse::Data::Attributes::AdditionalVerificationStatus
                   }

          # @!attribute check_number
          #
          #   @return [String]
          optional :check_number, String, api_name: :checkNumber

          # @!attribute counterparty
          #
          #   @return [Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty]
          optional :counterparty,
                   -> {
                     Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty
                   }

          # @!attribute counterparty_routing_number
          #
          #   @return [String]
          optional :counterparty_routing_number, String, api_name: :counterpartyRoutingNumber

          # @!attribute delivery_status
          #
          #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Attributes::DeliveryStatus]
          optional :delivery_status,
                   api_name: :deliveryStatus,
                   enum: -> { Unit::Models::CheckPaymentListResponse::Data::Attributes::DeliveryStatus }

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
          #   @return [Array<Symbol, Unit::Models::CheckPaymentListResponse::Data::Attributes::PendingReviewReason>]
          optional :pending_review_reasons,
                   Unit::ArrayOf[enum: -> {
                     Unit::Models::CheckPaymentListResponse::Data::Attributes::PendingReviewReason
                   }],
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
          #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Attributes::ReturnReason]
          optional :return_reason,
                   api_name: :returnReason,
                   enum: -> { Unit::Models::CheckPaymentListResponse::Data::Attributes::ReturnReason }

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
          #   # @param additional_verification_status [String, nil]
          #   # @param check_number [String, nil]
          #   # @param counterparty [Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty, nil]
          #   # @param counterparty_routing_number [String, nil]
          #   # @param delivery_status [String, nil]
          #   # @param description [String, nil]
          #   # @param expected_delivery [String, nil]
          #   # @param expiration_date [String, nil]
          #   # @param memo [String, nil]
          #   # @param on_us [String, nil]
          #   # @param on_us_auxiliary [String, nil]
          #   # @param pending_review_reasons [Array<String>, nil]
          #   # @param postal_code [String, nil]
          #   # @param reject_reason [String, nil]
          #   # @param return_cutoff_time [String, nil]
          #   # @param return_reason [String, nil]
          #   # @param send_at [String, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   # @param tracked_at [String, nil]
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
          # case enum
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
          end

          # @example
          #
          # ```ruby
          # case enum
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
          end

          class Counterparty < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty::Address]
            optional :address,
                     -> {
                       Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty::Address
                     }

            # @!attribute counterparty_moved
            #
            #   @return [Boolean]
            optional :counterparty_moved, Unit::BooleanModel, api_name: :counterpartyMoved

            # @!attribute name
            #
            #   @return [String]
            optional :name, String

            # @!parse
            #   # @param address [Unit::Models::CheckPaymentListResponse::Data::Attributes::Counterparty::Address, nil]
            #   # @param counterparty_moved [Boolean, nil]
            #   # @param name [String, nil]
            #   #
            #   def initialize(address: nil, counterparty_moved: nil, name: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

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
              #   @return [String]
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
          # case enum
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :NameMissMatch
          #   # ...
          # in :SoftLimit
          #   # ...
          # end
          # ```
          class PendingReviewReason < Unit::Enum
            NAME_MISS_MATCH = :NameMissMatch
            SOFT_LIMIT = :SoftLimit
          end

          # @example
          #
          # ```ruby
          # case enum
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
          end
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer }

          # @!attribute customers
          #
          #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers]
          optional :customers, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers }

          # @!attribute transaction
          #
          #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction]
          optional :transaction,
                   -> {
                     Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::CheckPaymentListResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer, nil]
          #   # @param customers [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers, nil]
          #   # @param transaction [Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction, nil]
          #   #
          #   def initialize(account:, customer: nil, customers: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentListResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentListResponse::Data::Relationships::Account::Data::Type
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
              # case enum
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
              end
            end
          end

          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentListResponse::Data::Relationships::Customer::Data::Type
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
              # case enum
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
              end
            end
          end

          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers::Data>]
            required :data,
                     Unit::ArrayOf[-> {
                       Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers::Data
                     }]

            # @!parse
            #   # @param data [Array<Unit::Models::CheckPaymentListResponse::Data::Relationships::Customers::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

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
              #   # @param id [String, nil]
              #   # @param type [String, nil]
              #   #
              #   def initialize(id: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckPaymentListResponse::Data::Relationships::Transaction::Data::Type
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
              # case enum
              # in :transaction
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                TRANSACTION = :transaction
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :checkPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_PAYMENT = :checkPayment
        end
      end
    end
  end
end
