# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # fee_reverse_response => {
    #   data: Unit::Models::FeeReverseResponse::Data
    # }
    # ```
    class FeeReverseResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::FeeReverseResponse::Data]
      optional :data, -> { Unit::Models::FeeReverseResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::FeeReverseResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::FeeReverseResponse::Data::Attributes,
      #   relationships: Unit::Models::FeeReverseResponse::Data::Relationships,
      #   type: enum: Unit::Models::FeeReverseResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::FeeReverseResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::FeeReverseResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::FeeReverseResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::FeeReverseResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::FeeReverseResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::FeeReverseResponse::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::FeeReverseResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::FeeReverseResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   description: String,
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param description [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(description:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::FeeReverseResponse::Data::Relationships::Account,
        #   transaction: Unit::Models::FeeReverseResponse::Data::Relationships::Transaction
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::FeeReverseResponse::Data::Relationships::Account]
          optional :account, -> { Unit::Models::FeeReverseResponse::Data::Relationships::Account }

          # @!attribute transaction
          #
          #   @return [Unit::Models::FeeReverseResponse::Data::Relationships::Transaction]
          optional :transaction, -> { Unit::Models::FeeReverseResponse::Data::Relationships::Transaction }

          # @!parse
          #   # @param account [Unit::Models::FeeReverseResponse::Data::Relationships::Account]
          #   # @param transaction [Unit::Models::FeeReverseResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeReverseResponse::Data::Relationships::Account::Data::Type
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
          # transaction => {
          #   data: Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data
          # }
          # ```
          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data]
            required :data, -> { Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeReverseResponse::Data::Relationships::Transaction::Data::Type
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
