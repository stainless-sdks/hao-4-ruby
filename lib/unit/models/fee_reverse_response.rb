# frozen_string_literal: true

module Unit
  module Models
    class FeeReverseResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::FeeReverseResponse::Data]
      optional :data, -> { Unit::Models::FeeReverseResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::FeeReverseResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        #   # @param attributes [Unit::Models::FeeReverseResponse::Data::Attributes, nil]
        #   # @param relationships [Unit::Models::FeeReverseResponse::Data::Relationships, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param description [String]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   #
          #   def initialize(description:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

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
          #   # @param account [Unit::Models::FeeReverseResponse::Data::Relationships::Account, nil]
          #   # @param transaction [Unit::Models::FeeReverseResponse::Data::Relationships::Transaction, nil]
          #   #
          #   def initialize(account: nil, transaction: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

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
              #
              # ```ruby
              # case enum
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
              end
            end
          end

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
        # in :feeReversal
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          FEE_REVERSAL = :feeReversal
        end
      end
    end
  end
end
