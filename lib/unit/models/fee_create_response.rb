# frozen_string_literal: true

module Unit
  module Models
    class FeeCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::FeeCreateResponse::Data]
      optional :data, -> { Unit::Models::FeeCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::FeeCreateResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::FeeCreateResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::FeeCreateResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::FeeCreateResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::FeeCreateResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::FeeCreateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::FeeCreateResponse::Data::Type }

        # @!parse
        #   # @param id [String, nil]
        #   # @param attributes [Unit::Models::FeeCreateResponse::Data::Attributes, nil]
        #   # @param relationships [Unit::Models::FeeCreateResponse::Data::Relationships, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

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

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param amount [Integer]
          #   # @param description [String]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   #
          #   def initialize(amount:, description:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

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
