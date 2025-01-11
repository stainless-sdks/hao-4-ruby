# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # dispute_list_response_item => {
    #   id: String,
    #   relationships: Unit::Models::DisputeListResponseItem::Relationships,
    #   type: Unit::Models::DisputeListResponseItem::Type,
    #   attributes: Unit::Models::DisputeListResponseItem::Attributes
    # }
    # ```
    class DisputeListResponseItem < Unit::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute relationships
      #
      #   @return [Unit::Models::DisputeListResponseItem::Relationships]
      required :relationships, -> { Unit::Models::DisputeListResponseItem::Relationships }

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::DisputeListResponseItem::Type]
      required :type, enum: -> { Unit::Models::DisputeListResponseItem::Type }

      # @!attribute attributes
      #
      #   @return [Unit::Models::DisputeListResponseItem::Attributes]
      optional :attributes, -> { Unit::Models::DisputeListResponseItem::Attributes }

      # @!parse
      #   # @param id [String]
      #   # @param relationships [Unit::Models::DisputeListResponseItem::Relationships]
      #   # @param type [String]
      #   # @param attributes [Unit::Models::DisputeListResponseItem::Attributes]
      #   #
      #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # relationships => {
      #   account: Unit::Models::DisputeListResponseItem::Relationships::Account,
      #   customer: Unit::Models::DisputeListResponseItem::Relationships::Customer,
      #   transaction: Unit::Models::DisputeListResponseItem::Relationships::Transaction
      # }
      # ```
      class Relationships < Unit::BaseModel
        # @!attribute account
        #
        #   @return [Unit::Models::DisputeListResponseItem::Relationships::Account]
        required :account, -> { Unit::Models::DisputeListResponseItem::Relationships::Account }

        # @!attribute customer
        #
        #   @return [Unit::Models::DisputeListResponseItem::Relationships::Customer]
        required :customer, -> { Unit::Models::DisputeListResponseItem::Relationships::Customer }

        # @!attribute transaction
        #
        #   @return [Unit::Models::DisputeListResponseItem::Relationships::Transaction]
        required :transaction, -> { Unit::Models::DisputeListResponseItem::Relationships::Transaction }

        # @!parse
        #   # @param account [Unit::Models::DisputeListResponseItem::Relationships::Account]
        #   # @param customer [Unit::Models::DisputeListResponseItem::Relationships::Customer]
        #   # @param transaction [Unit::Models::DisputeListResponseItem::Relationships::Transaction]
        #   #
        #   def initialize(account:, customer:, transaction:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # account => {
        #   data: Unit::Models::DisputeListResponseItem::Relationships::Account::Data
        # }
        # ```
        class Account < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::DisputeListResponseItem::Relationships::Account::Data]
          required :data, -> { Unit::Models::DisputeListResponseItem::Relationships::Account::Data }

          # @!parse
          #   # @param data [Unit::Models::DisputeListResponseItem::Relationships::Account::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # data => {
          #   id: String,
          #   type: Unit::Models::DisputeListResponseItem::Relationships::Account::Data::Type
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::DisputeListResponseItem::Relationships::Account::Data::Type]
            required :type,
                     enum: -> {
                       Unit::Models::DisputeListResponseItem::Relationships::Account::Data::Type
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
        #   data: Unit::Models::DisputeListResponseItem::Relationships::Customer::Data
        # }
        # ```
        class Customer < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::DisputeListResponseItem::Relationships::Customer::Data]
          required :data, -> { Unit::Models::DisputeListResponseItem::Relationships::Customer::Data }

          # @!parse
          #   # @param data [Unit::Models::DisputeListResponseItem::Relationships::Customer::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # data => {
          #   id: String,
          #   type: Unit::Models::DisputeListResponseItem::Relationships::Customer::Data::Type
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::DisputeListResponseItem::Relationships::Customer::Data::Type]
            required :type,
                     enum: -> {
                       Unit::Models::DisputeListResponseItem::Relationships::Customer::Data::Type
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
        # transaction => {
        #   data: Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data
        # }
        # ```
        class Transaction < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data]
          required :data, -> { Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data }

          # @!parse
          #   # @param data [Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # data => {
          #   id: String,
          #   type: Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data::Type
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data::Type]
            required :type,
                     enum: -> {
                       Unit::Models::DisputeListResponseItem::Relationships::Transaction::Data::Type
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
      # in :dispute
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        DISPUTE = :dispute

        finalize!
      end

      # @example
      #
      # ```ruby
      # attributes => {
      #   amount: Integer,
      #   created_at: Time,
      #   description: String,
      #   external_id: String,
      #   source: Unit::Models::DisputeListResponseItem::Attributes::Source,
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
        #   @return [Symbol, Unit::Models::DisputeListResponseItem::Attributes::Source]
        required :source, enum: -> { Unit::Models::DisputeListResponseItem::Attributes::Source }

        # @!attribute status
        #
        #   @return [String]
        required :status, String

        # @!attribute decision_reason
        #
        #   @return [String]
        optional :decision_reason, String, api_name: :decisionReason

        # @!attribute link
        #
        #   @return [String]
        optional :link, String

        # @!attribute status_history
        #
        #   @return [Array<Unit::Models::DisputeListResponseItem::Attributes::StatusHistory>]
        optional :status_history,
                 Unit::ArrayOf[-> { Unit::Models::DisputeListResponseItem::Attributes::StatusHistory }],
                 api_name: :statusHistory

        # @!parse
        #   # @param amount [Integer]
        #   # @param created_at [String]
        #   # @param description [String]
        #   # @param external_id [String]
        #   # @param source [String]
        #   # @param status [String]
        #   # @param decision_reason [String]
        #   # @param link [String]
        #   # @param status_history [Array<Unit::Models::DisputeListResponseItem::Attributes::StatusHistory>]
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
        #
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
        #
        # ```ruby
        # status_history => {
        #   type: String,
        #   updated_at: Time
        # }
        # ```
        class StatusHistory < Unit::BaseModel
          # @!attribute type
          #
          #   @return [String]
          optional :type, String

          # @!attribute updated_at
          #
          #   @return [Time]
          optional :updated_at, Time, api_name: :updatedAt

          # @!parse
          #   # @param type [String]
          #   # @param updated_at [String]
          #   #
          #   def initialize(type: nil, updated_at: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end

    DisputeListResponse = Unit::ArrayOf[-> { Unit::Models::DisputeListResponseItem }]
  end
end
