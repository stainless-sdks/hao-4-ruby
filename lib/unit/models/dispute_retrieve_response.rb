# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # dispute_retrieve_response => {
    #   data: Unit::Models::DisputeRetrieveResponse::Data
    # }
    # ```
    class DisputeRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::DisputeRetrieveResponse::Data, nil]
      optional :data, -> { Unit::Models::DisputeRetrieveResponse::Data }

      # @!parse
      #   # @return [Unit::Models::DisputeRetrieveResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::DisputeRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   relationships: Unit::Models::DisputeRetrieveResponse::Data::Relationships,
      #   type: enum: Unit::Models::DisputeRetrieveResponse::Data::Type,
      #   attributes: Unit::Models::DisputeRetrieveResponse::Data::Attributes
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute relationships
        #
        #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Type]
        required :type, enum: -> { Unit::Models::DisputeRetrieveResponse::Data::Type }

        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::DisputeRetrieveResponse::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::DisputeRetrieveResponse::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::DisputeRetrieveResponse::Data::Attributes]
        #   attr_writer :attributes

        # @!parse
        #   # @param id [String]
        #   # @param relationships [Unit::Models::DisputeRetrieveResponse::Data::Relationships]
        #   # @param type [String]
        #   # @param attributes [Unit::Models::DisputeRetrieveResponse::Data::Attributes]
        #   #
        #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account,
        #   customer: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer,
        #   transaction: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer }

          # @!attribute transaction
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction]
          required :transaction,
                   -> {
                     Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer]
          #   # @param transaction [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account:, customer:, transaction:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data::Type
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
          #   data: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data::Type
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
          # transaction => {
          #   data: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data::Type
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
        # in :dispute
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          DISPUTE = :dispute

          finalize!
        end

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   created_at: Time,
        #   description: String,
        #   external_id: String,
        #   source: enum: Unit::Models::DisputeRetrieveResponse::Data::Attributes::Source,
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

          # @!attribute external_id
          #
          #   @return [String]
          required :external_id, String, api_name: :externalId

          # @!attribute source
          #
          #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Attributes::Source]
          required :source, enum: -> { Unit::Models::DisputeRetrieveResponse::Data::Attributes::Source }

          # @!attribute status
          #
          #   @return [String]
          required :status, String

          # @!attribute [r] decision_reason
          #
          #   @return [String, nil]
          optional :decision_reason, String, api_name: :decisionReason

          # @!parse
          #   # @return [String]
          #   attr_writer :decision_reason

          # @!attribute [r] link
          #
          #   @return [String, nil]
          optional :link, String

          # @!parse
          #   # @return [String]
          #   attr_writer :link

          # @!attribute [r] status_history
          #
          #   @return [Array<Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory>]
          optional :status_history,
                   -> {
                     Unit::ArrayOf[Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory]
                   },
                   api_name: :statusHistory

          # @!parse
          #   # @return [Array<Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory>]
          #   attr_writer :status_history

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param external_id [String]
          #   # @param source [String]
          #   # @param status [String]
          #   # @param decision_reason [String]
          #   # @param link [String]
          #   # @param status_history [Array<Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory>]
          #   #
          #   def initialize(
          #     amount:,
          #     created_at:,
          #     description:,
          #     external_id:,
          #     source:,
          #     status:,
          #     decision_reason: nil,
          #     link: nil,
          #     status_history: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case source
          # in :DebitCard
          #   # ...
          # in :ACH
          #   # ...
          # end
          # ```
          class Source < Unit::Enum
            DEBIT_CARD = :DebitCard
            ACH = :ACH

            finalize!
          end

          # @example
          # ```ruby
          # status_history => {
          #   type: String,
          #   updated_at: Time
          # }
          # ```
          class StatusHistory < Unit::BaseModel
            # @!attribute [r] type
            #
            #   @return [String, nil]
            optional :type, String

            # @!parse
            #   # @return [String]
            #   attr_writer :type

            # @!attribute [r] updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time, api_name: :updatedAt

            # @!parse
            #   # @return [Time]
            #   attr_writer :updated_at

            # @!parse
            #   # @param type [String]
            #   # @param updated_at [String]
            #   #
            #   def initialize(type: nil, updated_at: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end
      end
    end
  end
end
