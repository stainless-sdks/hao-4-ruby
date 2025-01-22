# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # fee_create_response => {
    #   data: Unit::Models::FeeCreateResponse::Data
    # }
    # ```
    class FeeCreateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::FeeCreateResponse::Data, nil]
      optional :data, -> { Unit::Models::FeeCreateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::FeeCreateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::FeeCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::FeeCreateResponse::Data::Attributes,
      #   relationships: Unit::Models::FeeCreateResponse::Data::Relationships,
      #   type: Unit::Models::FeeCreateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::FeeCreateResponse::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::FeeCreateResponse::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::FeeCreateResponse::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Unit::Models::FeeCreateResponse::Data::Relationships, nil]
        optional :relationships, -> { Unit::Models::FeeCreateResponse::Data::Relationships }

        # @!parse
        #   # @return [Unit::Models::FeeCreateResponse::Data::Relationships]
        #   attr_writer :relationships

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::FeeCreateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::FeeCreateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::FeeCreateResponse::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::FeeCreateResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::FeeCreateResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   description: String,
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
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(amount:, description:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::FeeCreateResponse::Data::Relationships::Account
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::FeeCreateResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::FeeCreateResponse::Data::Relationships::Account }

          # @!parse
          #   # @param account [Unit::Models::FeeCreateResponse::Data::Relationships::Account]
          #   #
          #   def initialize(account:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::FeeCreateResponse::Data::Relationships::Account::Data::Type
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

        # @example
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
