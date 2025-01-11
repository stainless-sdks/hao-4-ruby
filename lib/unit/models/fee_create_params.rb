# frozen_string_literal: true

module Unit
  module Models
    class FeeCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::FeeCreateParams::Data]
      required :data, -> { Unit::Models::FeeCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::FeeCreateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   attributes: Unit::Models::FeeCreateParams::Data::Attributes,
      #   relationships: Unit::Models::FeeCreateParams::Data::Relationships,
      #   type: enum: Unit::Models::FeeCreateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::FeeCreateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::FeeCreateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::FeeCreateParams::Data::Relationships]
        required :relationships, -> { Unit::Models::FeeCreateParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::FeeCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::FeeCreateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::FeeCreateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::FeeCreateParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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
          #   # @param idempotency_key [String]
          #   # @param tags [Hash{Symbol => String}]
          #   #
          #   def initialize(amount:, description:, idempotency_key: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # relationships => {
        #   account: Unit::Models::FeeCreateParams::Data::Relationships::Account
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::FeeCreateParams::Data::Relationships::Account]
          required :account, -> { Unit::Models::FeeCreateParams::Data::Relationships::Account }

          # @!parse
          #   # @param account [Unit::Models::FeeCreateParams::Data::Relationships::Account]
          #   #
          #   def initialize(account:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # account => {
          #   data: Unit::Models::FeeCreateParams::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeCreateParams::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::FeeCreateParams::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeCreateParams::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::FeeCreateParams::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeCreateParams::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeCreateParams::Data::Relationships::Account::Data::Type
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
        end

        # @example
        #
        # ```ruby
        # case type
        # in :fee
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          FEE = :fee

          finalize!
        end
      end
    end
  end
end
