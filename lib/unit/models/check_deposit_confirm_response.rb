# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # check_deposit_confirm_response => {
    #   data: Unit::Models::CheckDepositConfirmResponse::Data
    # }
    # ```
    class CheckDepositConfirmResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositConfirmResponse::Data]
      optional :data, -> { Unit::Models::CheckDepositConfirmResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositConfirmResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::CheckDepositConfirmResponse::Data::Attributes,
      #   relationships: Unit::Models::CheckDepositConfirmResponse::Data::Relationships,
      #   type: enum: Unit::Models::CheckDepositConfirmResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckDepositConfirmResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckDepositConfirmResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Type]
        required :type, enum: -> { Unit::Models::CheckDepositConfirmResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::CheckDepositConfirmResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckDepositConfirmResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   created_at: Time,
        #   description: String,
        #   status: enum: Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Status,
        #   check_number: String,
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

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute status
          #
          #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Status }

          # @!attribute check_number
          #
          #   @return [String]
          optional :check_number, String, api_name: :checkNumber

          # @!attribute counterparty
          #
          #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Counterparty]
          optional :counterparty,
                   -> {
                     Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Counterparty
                   }

          # @!attribute reason
          #
          #   @return [String, nil]
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
          #   @return [Array<Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory>]
          optional :status_history,
                   -> {
                     Unit::ArrayOf[Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory]
                   },
                   api_name: :statusHistory

          # @!attribute status_set_by
          #
          #   @return [String]
          optional :status_set_by, String, api_name: :statusSetBy

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
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
          #   # @param check_number [String]
          #   # @param counterparty [Unit::Models::CheckDepositConfirmResponse::Data::Attributes::Counterparty]
          #   # @param reason [String, nil]
          #   # @param reason_text [String]
          #   # @param settlement_date [String]
          #   # @param status_created_at [String]
          #   # @param status_history [Array<Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory>]
          #   # @param status_set_by [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   # @param vendor [String]
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
          # ```ruby
          # case status
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

            finalize!
          end

          # @example
          # ```ruby
          # counterparty => {
          #   account_number: String,
          #   name: String,
          #   routing_number: String
          # }
          # ```
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

          # @example
          # ```ruby
          # status_history => {
          #   status: Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status,
          #   updated_at: String,
          #   updated_by: String
          # }
          # ```
          class StatusHistory < Unit::BaseModel
            # @!attribute status
            #
            #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status]
            required :status,
                     -> { Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status }

            # @!attribute updated_at
            #
            #   @return [String]
            optional :updated_at, String, api_name: :updatedAt

            # @!attribute updated_by
            #
            #   @return [String]
            optional :updated_by, String, api_name: :updatedBy

            # @!parse
            #   # @param status [Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status]
            #   # @param updated_at [String]
            #   # @param updated_by [String]
            #   #
            #   def initialize(status:, updated_at: nil, updated_by: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # status => {
            #   type: enum: Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status::Type
            # }
            # ```
            class Status < Unit::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status::Type]
              optional :type,
                       enum: -> {
                         Unit::Models::CheckDepositConfirmResponse::Data::Attributes::StatusHistory::Status::Type
                       }

              # @!parse
              #   # @param type [String]
              #   #
              #   def initialize(type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case type
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

                finalize!
              end
            end
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account,
        #   customer: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer,
        #   org: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org,
        #   transaction: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer }

          # @!attribute org
          #
          #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org]
          optional :org, -> { Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org }

          # @!attribute transaction
          #
          #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction]
          optional :transaction,
                   -> {
                     Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer]
          #   # @param org [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org]
          #   # @param transaction [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account:, customer: nil, org: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data]
            required :data,
                     -> {
                       Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Account::Data::Type
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
          #   data: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Customer::Data::Type
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
          # org => {
          #   data: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org::Data
          # }
          # ```
          class Org < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org::Data]
            required :data, -> { Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Org::Data]
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
          # transaction => {
          #   data: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositConfirmResponse::Data::Relationships::Transaction::Data::Type
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
        # in :checkDeposit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_DEPOSIT = :checkDeposit

          finalize!
        end
      end
    end
  end
end
