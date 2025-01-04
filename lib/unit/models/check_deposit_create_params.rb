# frozen_string_literal: true

module Unit
  module Models
    class CheckDepositCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CheckDepositCreateParams::Data]
      optional :data, -> { Unit::Models::CheckDepositCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CheckDepositCreateParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CheckDepositCreateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::CheckDepositCreateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::CheckDepositCreateParams::Data::Relationships]
        required :relationships, -> { Unit::Models::CheckDepositCreateParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CheckDepositCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::CheckDepositCreateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CheckDepositCreateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::CheckDepositCreateParams::Data::Relationships]
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

          # @!attribute clearing_days_override
          #
          #   @return [Integer]
          optional :clearing_days_override, Integer, api_name: :clearingDaysOverride

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
          #   # @param clearing_days_override [Integer]
          #   # @param idempotency_key [String]
          #   # @param tags [Hash{Symbol => String}]
          #   #
          #   def initialize(amount:, description:, clearing_days_override: nil, idempotency_key: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::CheckDepositCreateParams::Data::Relationships::Account]
          required :account, -> { Unit::Models::CheckDepositCreateParams::Data::Relationships::Account }

          # @!parse
          #   # @param account [Unit::Models::CheckDepositCreateParams::Data::Relationships::Account]
          #   #
          #   def initialize(account:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::CheckDepositCreateParams::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::CheckDepositCreateParams::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::CheckDepositCreateParams::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::CheckDepositCreateParams::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::CheckDepositCreateParams::Data::Relationships::Account::Data::Type
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

                finalize!
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :checkDeposit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_DEPOSIT = :checkDeposit

          finalize!
        end
      end
    end
  end
end
