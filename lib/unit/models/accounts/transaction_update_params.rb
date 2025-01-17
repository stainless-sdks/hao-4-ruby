# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      class TransactionUpdateParams < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute data
        #
        #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction]
        required :data, union: -> { Unit::Models::Accounts::TransactionUpdateParams::Data }

        # @!parse
        #   # @param account_id [String]
        #   # @param data [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction]
        #   #
        #   def initialize(account_id:, data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case data
        # in Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags
        #   # ...
        # in Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction
        #   # ...
        # in Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction
        #   # ...
        # end
        # ```
        class Data < Unit::Union
          variant -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags }

          variant -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction }

          variant -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction }

          # @example
          # ```ruby
          # update_transaction_tags => {
          #   attributes: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Attributes,
          #   type: enum: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Type
          # }
          # ```
          class UpdateTransactionTags < Unit::BaseModel
            # @!attribute attributes
            #
            #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Attributes]
            required :attributes,
                     -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Attributes }

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Type]
            required :type,
                     enum: -> {
                       Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Type
                     }

            # @!parse
            #   # @param attributes [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateTransactionTags::Attributes]
            #   # @param type [String]
            #   #
            #   def initialize(attributes:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # attributes => {
            #   tags: -> { Unit::HashOf[String] === _1 }
            # }
            # ```
            class Attributes < Unit::BaseModel
              # @!attribute tags
              #
              #   @return [Hash{Symbol=>String}]
              required :tags, Unit::HashOf[String]

              # @!parse
              #   # @param tags [Hash{Symbol=>String}]
              #   #
              #   def initialize(tags:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

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

          # @example
          # ```ruby
          # update_book_transaction => {
          #   attributes: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Attributes,
          #   type: enum: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Type,
          #   relationships: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships
          # }
          # ```
          class UpdateBookTransaction < Unit::BaseModel
            # @!attribute attributes
            #
            #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Attributes]
            required :attributes,
                     -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Attributes }

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Type]
            required :type,
                     enum: -> {
                       Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Type
                     }

            # @!attribute relationships
            #
            #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships]
            optional :relationships,
                     -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships }

            # @!parse
            #   # @param attributes [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Attributes]
            #   # @param type [String]
            #   # @param relationships [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships]
            #   #
            #   def initialize(attributes:, type:, relationships: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # attributes => {
            #   summary: String,
            #   tags: -> { Unit::HashOf[String] === _1 }
            # }
            # ```
            class Attributes < Unit::BaseModel
              # @!attribute summary
              #
              #   @return [String]
              optional :summary, String

              # @!attribute tags
              #
              #   @return [Hash{Symbol=>String}]
              optional :tags, Unit::HashOf[String]

              # @!parse
              #   # @param summary [String]
              #   # @param tags [Hash{Symbol=>String}]
              #   #
              #   def initialize(summary: nil, tags: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            # @example
            # ```ruby
            # case type
            # in :bookTransaction
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              BOOK_TRANSACTION = :bookTransaction

              finalize!
            end

            # @example
            # ```ruby
            # relationships => {
            #   account: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account
            # }
            # ```
            class Relationships < Unit::BaseModel
              # @!attribute account
              #
              #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account]
              required :account,
                       -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account }

              # @!parse
              #   # @param account [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account]
              #   #
              #   def initialize(account:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # account => {
              #   data: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data
              # }
              # ```
              class Account < Unit::BaseModel
                # @!attribute data
                #
                #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data]
                required :data,
                         -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data }

                # @!parse
                #   # @param data [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data]
                #   #
                #   def initialize(data:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # data => {
                #   id: String,
                #   type: enum: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data::Type
                # }
                # ```
                class Data < Unit::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute type
                  #
                  #   @return [Symbol, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data::Type]
                  required :type,
                           enum: -> {
                             Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateBookTransaction::Relationships::Account::Data::Type
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
            end
          end

          # @example
          # ```ruby
          # update_chargeback_transaction => {
          #   attributes: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Attributes,
          #   type: enum: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Type,
          #   relationships: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships
          # }
          # ```
          class UpdateChargebackTransaction < Unit::BaseModel
            # @!attribute attributes
            #
            #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Attributes]
            required :attributes,
                     -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Attributes }

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Type]
            required :type,
                     enum: -> {
                       Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Type
                     }

            # @!attribute relationships
            #
            #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships]
            optional :relationships,
                     -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships }

            # @!parse
            #   # @param attributes [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Attributes]
            #   # @param type [String]
            #   # @param relationships [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships]
            #   #
            #   def initialize(attributes:, type:, relationships: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # attributes => {
            #   summary: String,
            #   tags: -> { Unit::HashOf[String] === _1 }
            # }
            # ```
            class Attributes < Unit::BaseModel
              # @!attribute summary
              #
              #   @return [String]
              optional :summary, String

              # @!attribute tags
              #
              #   @return [Hash{Symbol=>String}]
              optional :tags, Unit::HashOf[String]

              # @!parse
              #   # @param summary [String]
              #   # @param tags [Hash{Symbol=>String}]
              #   #
              #   def initialize(summary: nil, tags: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            # @example
            # ```ruby
            # case type
            # in :chargebackTransaction
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              CHARGEBACK_TRANSACTION = :chargebackTransaction

              finalize!
            end

            # @example
            # ```ruby
            # relationships => {
            #   account: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account
            # }
            # ```
            class Relationships < Unit::BaseModel
              # @!attribute account
              #
              #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account]
              required :account,
                       -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account }

              # @!parse
              #   # @param account [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account]
              #   #
              #   def initialize(account:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # account => {
              #   data: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data
              # }
              # ```
              class Account < Unit::BaseModel
                # @!attribute data
                #
                #   @return [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data]
                required :data,
                         -> { Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data }

                # @!parse
                #   # @param data [Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data]
                #   #
                #   def initialize(data:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # data => {
                #   id: String,
                #   type: enum: Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data::Type
                # }
                # ```
                class Data < Unit::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute type
                  #
                  #   @return [Symbol, Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data::Type]
                  required :type,
                           enum: -> {
                             Unit::Models::Accounts::TransactionUpdateParams::Data::UpdateChargebackTransaction::Relationships::Account::Data::Type
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
            end
          end
        end
      end
    end
  end
end
