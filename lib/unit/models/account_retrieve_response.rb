# frozen_string_literal: true

module Unit
  module Models
    class AccountRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Account]
      optional :data, -> { Unit::Models::Account }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::AccountRetrieveResponse::Included>]
      optional :included, Unit::ArrayOf[-> { Unit::Models::AccountRetrieveResponse::Included }]

      # @!parse
      #   # @param data [Unit::Models::Account, nil]
      #   # @param included [Array<Unit::Models::AccountRetrieveResponse::Included>, nil]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Included < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AccountRetrieveResponse::Included::Type]
        optional :type, enum: -> { Unit::Models::AccountRetrieveResponse::Included::Type }

        # @!parse
        #   # @param id [String, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :individualCustomer
        #   # ...
        # in :businessCustomer
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          INDIVIDUAL_CUSTOMER = :individualCustomer
          BUSINESS_CUSTOMER = :businessCustomer

          finalize!
        end
      end
    end
  end
end
