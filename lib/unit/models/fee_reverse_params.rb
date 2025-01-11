# frozen_string_literal: true

module Unit
  module Models
    class FeeReverseParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::FeeReverseParams::Data]
      required :data, -> { Unit::Models::FeeReverseParams::Data }

      # @!parse
      #   # @param data [Unit::Models::FeeReverseParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::FeeReverseParams::Data::Attributes,
      #   relationships: Unit::Models::FeeReverseParams::Data::Relationships,
      #   type: enum: Unit::Models::FeeReverseParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::FeeReverseParams::Data::Attributes]
        required :attributes, -> { Unit::Models::FeeReverseParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::FeeReverseParams::Data::Relationships]
        required :relationships, -> { Unit::Models::FeeReverseParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::FeeReverseParams::Data::Type]
        required :type, enum: -> { Unit::Models::FeeReverseParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::FeeReverseParams::Data::Attributes]
        #   # @param relationships [Unit::Models::FeeReverseParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   description: String,
        #   idempotency_key: String,
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
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
          #   # @param description [String]
          #   # @param idempotency_key [String]
          #   # @param tags [Hash{Symbol => String}]
          #   #
          #   def initialize(description:, idempotency_key: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # relationships => {
        #   account: Unit::Models::FeeReverseParams::Data::Relationships::Account,
        #   transaction: Unit::Models::FeeReverseParams::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::FeeReverseParams::Data::Relationships::Account]
          optional :account, -> { Unit::Models::FeeReverseParams::Data::Relationships::Account }

          # @!attribute transaction
          #
          #   @return [Unit::Models::FeeReverseParams::Data::Relationships::Transaction]
          optional :transaction, -> { Unit::Models::FeeReverseParams::Data::Relationships::Transaction }

          # @!parse
          #   # @param account [Unit::Models::FeeReverseParams::Data::Relationships::Account]
          #   # @param transaction [Unit::Models::FeeReverseParams::Data::Relationships::Transaction]
          #   #
          #   def initialize(account: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # account => {
          #   data: Unit::Models::FeeReverseParams::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeReverseParams::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::FeeReverseParams::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeReverseParams::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::FeeReverseParams::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeReverseParams::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeReverseParams::Data::Relationships::Account::Data::Type
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
          # transaction => {
          #   data: Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data]
            required :data, -> { Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeReverseParams::Data::Relationships::Transaction::Data::Type
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
        # in :feeReversal
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          FEE_REVERSAL = :feeReversal

          finalize!
        end
      end
    end
  end
end
