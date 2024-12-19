# frozen_string_literal: true

module Unit
  module Models
    class RewardCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RewardCreateResponse::Data]
      optional :data, -> { Unit::Models::RewardCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RewardCreateResponse::Data, nil]
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
        #   @return [Unit::Models::RewardCreateResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::RewardCreateResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::RewardCreateResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::RewardCreateResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RewardCreateResponse::Data::Type]
        required :type, enum: -> { Unit::Models::RewardCreateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::RewardCreateResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::RewardCreateResponse::Data::Relationships]
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
          #   @return [Symbol, Unit::Models::RewardCreateResponse::Data::Attributes::Status]
          required :status, enum: -> { Unit::Models::RewardCreateResponse::Data::Attributes::Status }

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          required :tags, Unit::HashOf[String]

          # @!attribute reject_reason
          #
          #   @return [String]
          optional :reject_reason, String, api_name: :rejectReason

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param status [String]
          #   # @param tags [Hash{Symbol => String}]
          #   # @param reject_reason [String, nil]
          #   #
          #   def initialize(amount:, created_at:, description:, status:, tags:, reject_reason: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :Rejected
          #   # ...
          # in :Sent
          #   # ...
          # end
          # ```
          class Status < Unit::Enum
            REJECTED = :Rejected
            SENT = :Sent
          end
        end

        class Relationships < Unit::BaseModel
          # @!attribute customer
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Customer }

          # @!attribute funding_account
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount]
          required :funding_account,
                   -> { Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount },
                   api_name: :fundingAccount

          # @!attribute receiving_account
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount]
          required :receiving_account,
                   -> { Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount },
                   api_name: :receivingAccount

          # @!attribute card
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Card]
          optional :card, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Card }

          # @!attribute rewarded_transaction
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction]
          optional :rewarded_transaction,
                   -> { Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction },
                   api_name: :rewardedTransaction

          # @!attribute transaction
          #
          #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Transaction]
          optional :transaction, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Transaction }

          # @!parse
          #   # @param customer [Unit::Models::RewardCreateResponse::Data::Relationships::Customer]
          #   # @param funding_account [Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount]
          #   # @param receiving_account [Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount]
          #   # @param card [Unit::Models::RewardCreateResponse::Data::Relationships::Card, nil]
          #   # @param rewarded_transaction [Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction, nil]
          #   # @param transaction [Unit::Models::RewardCreateResponse::Data::Relationships::Transaction, nil]
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

          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::RewardCreateResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardCreateResponse::Data::Relationships::Customer::Data::Type
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

          class FundingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount::Data]
            required :data,
                     -> {
                       Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::FundingAccount::Data]
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

          class ReceivingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount::Data]
            required :data,
                     -> {
                       Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount::Data]
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
              #   @return [Symbol, Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardCreateResponse::Data::Relationships::ReceivingAccount::Data::Type
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
              # end
              # ```
              class Type < Unit::Enum
                ACCOUNT = :account
                DEPOSIT_ACCOUNT = :depositAccount
                CREDIT_ACCOUNT = :creditAccount
              end
            end
          end

          class Card < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Card::Data]
            required :data, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Card::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::Card::Data]
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

          class RewardedTransaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction::Data]
            required :data,
                     -> {
                       Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::RewardedTransaction::Data]
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
            #   @return [Unit::Models::RewardCreateResponse::Data::Relationships::Transaction::Data]
            required :data, -> { Unit::Models::RewardCreateResponse::Data::Relationships::Transaction::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateResponse::Data::Relationships::Transaction::Data]
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
              #   @return [Symbol, Unit::Models::RewardCreateResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardCreateResponse::Data::Relationships::Transaction::Data::Type
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
        # in :reward
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          REWARD = :reward
        end
      end
    end
  end
end
