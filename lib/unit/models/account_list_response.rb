# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # account_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Account] === _1 },
    #   included: -> { Unit::ArrayOf[Unit::Models::AccountListResponse::Included] === _1 },
    #   meta: Unit::Models::AccountListResponse::Meta
    # }
    # ```
    class AccountListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::Account>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Account] }

      # @!parse
      #   # @return [Array<Unit::Models::Account>]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::AccountListResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::AccountListResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::AccountListResponse::Included>]
      #   attr_writer :included

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::AccountListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::AccountListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::AccountListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::Account>]
      #   # @param included [Array<Unit::Models::AccountListResponse::Included>]
      #   # @param meta [Unit::Models::AccountListResponse::Meta]
      #   #
      #   def initialize(data: nil, included: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   type: Unit::Models::AccountListResponse::Included::Type
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
        #   @return [Symbol, Unit::Models::AccountListResponse::Included::Type, nil]
        optional :type, enum: -> { Unit::Models::AccountListResponse::Included::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::AccountListResponse::Included::Type]
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

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::AccountListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::AccountListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::AccountListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::AccountListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::AccountListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute [r] limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :offset

          # @!attribute [r] total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :total

          # @!parse
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   # @param total [Integer]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
