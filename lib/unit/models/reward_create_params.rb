# frozen_string_literal: true

module Unit
  module Models
    class RewardCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RewardCreateParams::Data]
      optional :data, -> { Unit::Models::RewardCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::RewardCreateParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::RewardCreateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::RewardCreateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::RewardCreateParams::Data::Relationships]
        required :relationships, -> { Unit::Models::RewardCreateParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RewardCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::RewardCreateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::RewardCreateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::RewardCreateParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute idempotency_key
          #
          #   @return [String]
          optional :idempotency_key, String, api_name: :idempotencyKey

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param amount [Integer]
          #   # @param description [String]
          #   # @param idempotency_key [String, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   #
          #   def initialize(amount:, description:, idempotency_key: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        class Relationships < Unit::BaseModel
          # @!attribute receiving_account
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount]
          required :receiving_account,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount },
                   api_name: :receivingAccount

          # @!attribute funding_account
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount]
          optional :funding_account,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount },
                   api_name: :fundingAccount

          # @!attribute rewarded_transaction
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction]
          optional :rewarded_transaction,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction },
                   api_name: :rewardedTransaction

          # @!parse
          #   # @param receiving_account [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount]
          #   # @param funding_account [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount, nil]
          #   # @param rewarded_transaction [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction, nil]
          #   #
          #   def initialize(receiving_account:, funding_account: nil, rewarded_transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class ReceivingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data]
            required :data,
                     -> {
                       Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data]
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
              #   @return [Symbol, Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data::Type
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

                finalize!
              end
            end
          end

          class FundingAccount < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount::Data]
            required :data, -> { Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount::Data }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount::Data]
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
            #   @return [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction::Data]
            required :data,
                     -> {
                       Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction::Data]
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

          finalize!
        end
      end
    end
  end
end
