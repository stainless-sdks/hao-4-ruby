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
      # ```ruby
      # case data
      # in Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount
      #   # ...
      # in Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount }

        variant -> { Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount }

        # @example
        # ```ruby
        # update_deposit_account => {
        #   attributes: Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Attributes,
        #   type: Unit::Models::AccountUpdateParams::Data::UpdateDepositAccount::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   deposit_product: String,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] deposit_product
            #
            #   @return [String, nil]
            optional :deposit_product, String, api_name: :depositProduct

            # @!parse
            #   # @return [String]
            #   attr_writer :deposit_product

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param deposit_product [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(deposit_product: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # case type
          # in :depositAccount
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            DEPOSIT_ACCOUNT = :depositAccount

            finalize!
          end
        end

        # @example
        # ```ruby
        # update_credit_account => {
        #   attributes: Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Attributes,
        #   type: Unit::Models::AccountUpdateParams::Data::UpdateCreditAccount::Type
        # }
        # ```
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

          # @example
          # ```ruby
          # attributes => {
          #   credit_limit: Integer,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] credit_limit
            #
            #   @return [Integer, nil]
            optional :credit_limit, Integer, api_name: :creditLimit

            # @!parse
            #   # @return [Integer]
            #   attr_writer :credit_limit

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param credit_limit [Integer]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(credit_limit: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # case type
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
