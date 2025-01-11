# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # customer_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::CustomerListResponse::Data] === _1 },
    #   meta: Unit::Models::CustomerListResponse::Meta
    # }
    # ```
    class CustomerListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::CustomerListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::CustomerListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Unit::Models::CustomerListResponse::Meta]
      optional :meta, -> { Unit::Models::CustomerListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::CustomerListResponse::Data>]
      #   # @param meta [Unit::Models::CustomerListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::CustomerListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CustomerListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerListResponse::Data::Type }

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
      #   pagination: Unit::Models::CustomerListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::CustomerListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::CustomerListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::CustomerListResponse::Meta::Pagination]
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
