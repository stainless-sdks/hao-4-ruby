# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # account_retrieve_response => {
    #   data: Unit::Models::Account,
    #   included: -> { Unit::ArrayOf[Unit::Models::AccountRetrieveResponse::Included] === _1 }
    # }
    # ```
    class AccountRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Account, nil]
      optional :data, -> { Unit::Models::Account }

      # @!parse
      #   # @return [Unit::Models::Account]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::AccountRetrieveResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::AccountRetrieveResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::AccountRetrieveResponse::Included>]
      #   attr_writer :included

      # @!parse
      #   # @param data [Unit::Models::Account]
      #   # @param included [Array<Unit::Models::AccountRetrieveResponse::Included>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   type: enum: Unit::Models::AccountRetrieveResponse::Included::Type
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::AccountRetrieveResponse::Included::Type, nil]
        optional :type, enum: -> { Unit::Models::AccountRetrieveResponse::Included::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::AccountRetrieveResponse::Included::Type]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
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
