# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::CheckDepositListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::CheckDepositListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::CheckDepositListResponse::Data>, nil]
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
        #   @return [Unit::Models::CheckDepositListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckDepositListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckDepositListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::CheckDepositListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CheckDepositListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckDepositListResponse::Data::Relationships]
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

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute status
          #
          #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::CheckDepositListResponse::Data::Attributes::Status }

          # @!attribute check_number
          #
          #   @return [String]
          optional :check_number, String, api_name: :checkNumber

          # @!attribute counterparty
          #
          #   @return [Unit::Models::CheckDepositListResponse::Data::Attributes::Counterparty]
          optional :counterparty,
                   -> {
                     Unit::Models::CheckDepositListResponse::Data::Attributes::Counterparty
                   }

          # @!attribute reason
          #
          #   @return [String]
          optional :reason, String

          # @!attribute reason_text
          #
          #   @return [String]
          optional :reason_text, String, api_name: :reasonText

          # @!attribute settlement_date
          #
          #   @return [Date]
          optional :settlement_date, Date, api_name: :settlementDate

          # @!attribute status_created_at
          #
          #   @return [Time]
          optional :status_created_at, Time, api_name: :statusCreatedAt

          # @!attribute status_history
          #
          #   @return [Array<Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory>]
          optional :status_history,
                   Unit::ArrayOf[-> {
                     Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory
                   }],
                   api_name: :statusHistory

          # @!attribute status_set_by
          #
          #   @return [String]
          optional :status_set_by, String, api_name: :statusSetBy

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!attribute vendor
          #
          #   @return [String]
          optional :vendor, String

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param status [String]
          #   # @param check_number [String, nil]
          #   # @param counterparty [Unit::Models::CheckDepositListResponse::Data::Attributes::Counterparty, nil]
          #   # @param reason [String, nil]
          #   # @param reason_text [String, nil]
          #   # @param settlement_date [String, nil]
          #   # @param status_created_at [String, nil]
          #   # @param status_history [Array<Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory>, nil]
          #   # @param status_set_by [String, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   # @param vendor [String, nil]
          #   #
          #   def initialize(
          #     amount:,
          #     created_at:,
          #     description:,
          #     status:,
          #     check_number: nil,
          #     counterparty: nil,
          #     reason: nil,
          #     reason_text: nil,
          #     settlement_date: nil,
          #     status_created_at: nil,
          #     status_history: nil,
          #     status_set_by: nil,
          #     tags: nil,
          #     vendor: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :AwaitingImages
          #   # ...
          # in :AwaitingFrontImage
          #   # ...
          # in :AwaitingBackImage
          #   # ...
          # in :Pending
          #   # ...
          # in :PendingReview
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Status < Unit::Enum
            AWAITING_IMAGES = :AwaitingImages
            AWAITING_FRONT_IMAGE = :AwaitingFrontImage
            AWAITING_BACK_IMAGE = :AwaitingBackImage
            PENDING = :Pending
            PENDING_REVIEW = :PendingReview
            AWAITING_CUSTOMER_CONFIRMATION = :AwaitingCustomerConfirmation
            REJECTED = :Rejected
            CLEARING = :Clearing
            SENT = :Sent
            CANCELED = :Canceled
            RETURNED = :Returned
          end

          class Counterparty < Unit::BaseModel
            # @!attribute account_number
            #
            #   @return [String]
            required :account_number, String, api_name: :accountNumber

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute routing_number
            #
            #   @return [String]
            required :routing_number, String, api_name: :routingNumber

            # @!parse
            #   # @param account_number [String]
            #   # @param name [String]
            #   # @param routing_number [String]
            #   #
            #   def initialize(account_number:, name:, routing_number:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class StatusHistory < Unit::BaseModel
            # @!attribute status
            #
            #   @return [Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory::Status]
            required :status,
                     -> {
                       Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory::Status
                     }

            # @!attribute updated_at
            #
            #   @return [String]
            optional :updated_at, String, api_name: :updatedAt

            # @!attribute updated_by
            #
            #   @return [String]
            optional :updated_by, String, api_name: :updatedBy

            # @!parse
            #   # @param status [Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory::Status]
            #   # @param updated_at [String, nil]
            #   # @param updated_by [String, nil]
            #   #
            #   def initialize(status:, updated_at: nil, updated_by: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Status < Unit::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory::Status::Type]
              optional :type,
                       enum: -> {
                         Unit::Models::CheckDepositListResponse::Data::Attributes::StatusHistory::Status::Type
                       }

              # @!parse
              #   # @param type [String, nil]
              #   #
              #   def initialize(type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # case enum
              # in :AwaitingImages
              #   # ...
              # in :AwaitingFrontImage
              #   # ...
              # in :AwaitingBackImage
              #   # ...
              # in :AwaitingCustomerConfirmation
              #   # ...
              # in :Pending
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Type < Unit::Enum
                AWAITING_IMAGES = :AwaitingImages
                AWAITING_FRONT_IMAGE = :AwaitingFrontImage
                AWAITING_BACK_IMAGE = :AwaitingBackImage
                AWAITING_CUSTOMER_CONFIRMATION = :AwaitingCustomerConfirmation
                PENDING = :Pending
                PENDING_REVIEW = :PendingReview
                REJECTED = :Rejected
                CLEARING = :Clearing
                SENT = :Sent
                CANCELED = :Canceled
                RETURNED = :Returned
              end
            end
          end
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Customer }

          # @!attribute org
          #
          #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Org]
          optional :org, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Org }

          # @!attribute transaction
          #
          #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction]
          optional :transaction,
                   -> {
                     Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::CheckDepositListResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckDepositListResponse::Data::Relationships::Customer, nil]
          #   # @param org [Unit::Models::CheckDepositListResponse::Data::Relationships::Org, nil]
          #   # @param transaction [Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction, nil]
          #   #
          #   def initialize(account:, customer: nil, org: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositListResponse::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositListResponse::Data::Relationships::Account::Data::Type
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
            #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositListResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositListResponse::Data::Relationships::Customer::Data::Type
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

          class Org < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Org::Data]
            required :data, -> { Unit::Models::CheckDepositListResponse::Data::Relationships::Org::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositListResponse::Data::Relationships::Org::Data]
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

          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction::Data]
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
              #   @return [Symbol, Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositListResponse::Data::Relationships::Transaction::Data::Type
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
        # in :checkDeposit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_DEPOSIT = :checkDeposit
        end
      end
    end
  end
end
