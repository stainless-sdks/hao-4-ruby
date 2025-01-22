# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # reward_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::RewardListResponse::Data] === _1 }
    # }
    # ```
    class RewardListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::RewardListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::RewardListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::RewardListResponse::Data>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Unit::Models::RewardListResponse::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::RewardListResponse::Data::Attributes,
      #   relationships: Unit::Models::RewardListResponse::Data::Relationships,
      #   type: Unit::Models::RewardListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::RewardListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::RewardListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::RewardListResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::RewardListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RewardListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::RewardListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::RewardListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::RewardListResponse::Data::Relationships]
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
        #   status: Unit::Models::RewardListResponse::Data::Attributes::Status,
        #   tags: -> { Unit::HashOf[String] === _1 }
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
          #   @return [Symbol, Unit::Models::RewardListResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::RewardListResponse::Data::Attributes::Status }

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
          required :tags, Unit::HashOf[String]

          # @!attribute [r] reject_reason
          #
          #   @return [String, nil]
          optional :reject_reason, String, api_name: :rejectReason

          # @!parse
          #   # @return [String]
          #   attr_writer :reject_reason

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param status [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   # @param reject_reason [String]
          #   #
          #   def initialize(amount:, created_at:, description:, status:, tags:, reject_reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case status
          # in :Rejected
          #   # ...
          # in :Sent
          #   # ...
          # end
          # ```
          class Status < Unit::Enum
            REJECTED = :Rejected
            SENT = :Sent

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   customer: Unit::Models::RewardListResponse::Data::Relationships::Customer,
        #   funding_account: Unit::Models::RewardListResponse::Data::Relationships::FundingAccount,
        #   receiving_account: Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount,
        #   card: Unit::Models::RewardListResponse::Data::Relationships::Card,
        #   rewarded_transaction: Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute customer
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::RewardListResponse::Data::Relationships::Customer }

          # @!attribute funding_account
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::FundingAccount]
          required :funding_account,
                   -> { Unit::Models::RewardListResponse::Data::Relationships::FundingAccount },
                   api_name: :fundingAccount

          # @!attribute receiving_account
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount]
          required :receiving_account,
                   -> { Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount },
                   api_name: :receivingAccount

          # @!attribute [r] card
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::Card, nil]
          optional :card, -> { Unit::Models::RewardListResponse::Data::Relationships::Card }

          # @!parse
          #   # @return [Unit::Models::RewardListResponse::Data::Relationships::Card]
          #   attr_writer :card

          # @!attribute [r] rewarded_transaction
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction, nil]
          optional :rewarded_transaction,
                   -> { Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction },
                   api_name: :rewardedTransaction

          # @!parse
          #   # @return [Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction]
          #   attr_writer :rewarded_transaction

          # @!attribute [r] transaction
          #
          #   @return [Unit::Models::RewardListResponse::Data::Relationships::Transaction, nil]
          optional :transaction, -> { Unit::Models::RewardListResponse::Data::Relationships::Transaction }

          # @!parse
          #   # @return [Unit::Models::RewardListResponse::Data::Relationships::Transaction]
          #   attr_writer :transaction

          # @!parse
          #   # @param customer [Unit::Models::RewardListResponse::Data::Relationships::Customer]
          #   # @param funding_account [Unit::Models::RewardListResponse::Data::Relationships::FundingAccount]
          #   # @param receiving_account [Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount]
          #   # @param card [Unit::Models::RewardListResponse::Data::Relationships::Card]
          #   # @param rewarded_transaction [Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction]
          #   # @param transaction [Unit::Models::RewardListResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(
          #     customer:,
          #     funding_account:,
          #     receiving_account:,
          #     card: nil,
          #     rewarded_transaction: nil,
          #     transaction: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # customer => {
          #   data: Unit::Models::RewardListResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::RewardListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::RewardListResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::RewardListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardListResponse::Data::Relationships::Customer::Data::Type
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
          # funding_account => {
          #   data: Unit::Models::RewardListResponse::Data::Relationships::FundingAccount::Data
          # }
          # ```
          class FundingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::FundingAccount::Data]
            required :data, -> { Unit::Models::RewardListResponse::Data::Relationships::FundingAccount::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::FundingAccount::Data]
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
          # receiving_account => {
          #   data: Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data
          # }
          # ```
          class ReceivingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data]
            required :data,
                     -> {
                       Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardListResponse::Data::Relationships::ReceivingAccount::Data::Type
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
              # end
              # ```
              class Type < Unit::Enum
                ACCOUNT = :account
                DEPOSIT_ACCOUNT = :depositAccount
                CREDIT_ACCOUNT = :creditAccount

                finalize!
              end
            end
          end

          # @example
          # ```ruby
          # card => {
          #   data: Unit::Models::RewardListResponse::Data::Relationships::Card::Data
          # }
          # ```
          class Card < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::Card::Data]
            required :data, -> { Unit::Models::RewardListResponse::Data::Relationships::Card::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::Card::Data]
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
          # rewarded_transaction => {
          #   data: Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction::Data
          # }
          # ```
          class RewardedTransaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction::Data]
            required :data,
                     -> {
                       Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::RewardedTransaction::Data]
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
          #   data: Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data]
            required :data, -> { Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardListResponse::Data::Relationships::Transaction::Data::Type
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
        # in :reward
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          REWARD = :reward

          finalize!
        end
      end
    end
  end
end
