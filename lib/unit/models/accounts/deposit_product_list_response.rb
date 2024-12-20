# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      class DepositProductListResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Array<Unit::Models::Accounts::DepositProductListResponse::Data>]
        optional :data, Unit::ArrayOf[-> { Unit::Models::Accounts::DepositProductListResponse::Data }]

        # @!parse
        #   # @param data [Array<Unit::Models::Accounts::DepositProductListResponse::Data>, nil]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Accounts::DepositProductListResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::Accounts::DepositProductListResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Accounts::DepositProductListResponse::Data::Type]
          required :type, enum: -> { Unit::Models::Accounts::DepositProductListResponse::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Accounts::DepositProductListResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!parse
            #   # @param name [String]
            #   #
            #   def initialize(name:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :accountDepositProduct
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACCOUNT_DEPOSIT_PRODUCT = :accountDepositProduct

            finalize!
          end
        end
      end
    end
  end
end
