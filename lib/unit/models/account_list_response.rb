# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # account_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Account] === _1 },
    #   included: -> { Unit::ArrayOf[Unit::Models::AccountListResponse::Included] === _1 },
    #   meta: Unit::Models::AccountListResponse::Meta
    # }
    # ```
    class AccountListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::Account>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::Account }]

      # @!attribute included
      #
      #   @return [Array<Unit::Models::AccountListResponse::Included>]
      optional :included, Unit::ArrayOf[-> { Unit::Models::AccountListResponse::Included }]

      # @!attribute meta
      #
      #   @return [Unit::Models::AccountListResponse::Meta]
      optional :meta, -> { Unit::Models::AccountListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::Account>]
      #   # @param included [Array<Unit::Models::AccountListResponse::Included>]
      #   # @param meta [Unit::Models::AccountListResponse::Meta]
      #   #
      #   def initialize(data: nil, included: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # included => {
      #   id: String,
      #   type: Unit::Models::AccountListResponse::Included::Type
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AccountListResponse::Included::Type]
        optional :type, enum: -> { Unit::Models::AccountListResponse::Included::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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
      #
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::AccountListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::AccountListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::AccountListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::AccountListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute limit
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          optional :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          optional :total, Integer

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
