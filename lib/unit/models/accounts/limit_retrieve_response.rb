# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      # @example
      #
      # ```ruby
      # limit_retrieve_response => {
      #   data: Unit::Models::Accounts::LimitRetrieveResponse::Data
      # }
      # ```
      class LimitRetrieveResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Accounts::LimitRetrieveResponse::Data]
        optional :data, -> { Unit::Models::Accounts::LimitRetrieveResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Accounts::LimitRetrieveResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   type: Unit::Models::Accounts::LimitRetrieveResponse::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Accounts::LimitRetrieveResponse::Data::Type]
          optional :type, enum: -> { Unit::Models::Accounts::LimitRetrieveResponse::Data::Type }

          # @!parse
          #   # @param type [String]
          #   #
          #   def initialize(type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case type
          # in :limits
          #   # ...
          # in :creditLimits
          #   # ...
          # in :walletLimits
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            LIMITS = :limits
            CREDIT_LIMITS = :creditLimits
            WALLET_LIMITS = :walletLimits

            finalize!
          end
        end
      end
    end
  end
end
