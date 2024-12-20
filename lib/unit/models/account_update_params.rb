# frozen_string_literal: true

module Unit
  module Models
    class AccountUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount, Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount]
      required :data, union: -> { Unit::Models::AccountUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount, Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount
      #   # ...
      # in Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount }

        variant -> { Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount }

        class UpdateDepositAccount < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Type]
          required :type, enum: -> { Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Type }

          # @!parse
          #   # @param attributes [Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute deposit_product
            #
            #   @return [String]
            optional :deposit_product, String, api_name: :depositProduct

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param deposit_product [String, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(deposit_product: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :depositAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            DEPOSIT_ACCOUNT = :depositAccount

            finalize!
          end
        end

        class UpdateCreditAccount < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Type]
          required :type, enum: -> { Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Type }

          # @!parse
          #   # @param attributes [Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute credit_limit
            #
            #   @return [Integer]
            optional :credit_limit, Integer, api_name: :creditLimit

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param credit_limit [Integer, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(credit_limit: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :creditAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CREDIT_ACCOUNT = :creditAccount

            finalize!
          end
        end
      end
    end
  end
end
