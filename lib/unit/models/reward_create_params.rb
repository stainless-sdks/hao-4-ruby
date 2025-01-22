# frozen_string_literal: true

module Unit
  module Models
    class RewardCreateParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::RewardCreateParams::Data, nil]
      optional :data, -> { Unit::Models::RewardCreateParams::Data }

      # @!parse
      #   # @return [Unit::Models::RewardCreateParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::RewardCreateParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::RewardCreateParams::Data::Attributes,
      #   relationships: Unit::Models::RewardCreateParams::Data::Relationships,
      #   type: Unit::Models::RewardCreateParams::Data::Type
      # }
      # ```
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

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   description: String,
        #   idempotency_key: String,
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute [r] idempotency_key
          #
          #   @return [String, nil]
          optional :idempotency_key, String, api_name: :idempotencyKey

          # @!parse
          #   # @return [String]
          #   attr_writer :idempotency_key

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param amount [Integer]
          #   # @param description [String]
          #   # @param idempotency_key [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(amount:, description:, idempotency_key: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # relationships => {
        #   receiving_account: Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount,
        #   funding_account: Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount,
        #   rewarded_transaction: Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute receiving_account
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount]
          required :receiving_account,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount },
                   api_name: :receivingAccount

          # @!attribute [r] funding_account
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount, nil]
          optional :funding_account,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount },
                   api_name: :fundingAccount

          # @!parse
          #   # @return [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount]
          #   attr_writer :funding_account

          # @!attribute [r] rewarded_transaction
          #
          #   @return [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction, nil]
          optional :rewarded_transaction,
                   -> { Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction },
                   api_name: :rewardedTransaction

          # @!parse
          #   # @return [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction]
          #   attr_writer :rewarded_transaction

          # @!parse
          #   # @param receiving_account [Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount]
          #   # @param funding_account [Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount]
          #   # @param rewarded_transaction [Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction]
          #   #
          #   def initialize(receiving_account:, funding_account: nil, rewarded_transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # receiving_account => {
          #   data: Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data
          # }
          # ```
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

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::RewardCreateParams::Data::Relationships::ReceivingAccount::Data::Type
            # }
            # ```
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
          # funding_account => {
          #   data: Unit::Models::RewardCreateParams::Data::Relationships::FundingAccount::Data
          # }
          # ```
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
          #   data: Unit::Models::RewardCreateParams::Data::Relationships::RewardedTransaction::Data
          # }
          # ```
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
