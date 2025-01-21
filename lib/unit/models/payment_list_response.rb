# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # payment_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Data] === _1 },
    #   included: -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Included] === _1 },
    #   meta: Unit::Models::PaymentListResponse::Meta
    # }
    # ```
    class PaymentListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::PaymentListResponse::Data>]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::PaymentListResponse::Included>]
      #   attr_writer :included

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::PaymentListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::PaymentListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::PaymentListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::PaymentListResponse::Data>]
      #   # @param included [Array<Unit::Models::PaymentListResponse::Included>]
      #   # @param meta [Unit::Models::PaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, included: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::PaymentListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::PaymentListResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::PaymentListResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::PaymentListResponse::Data::Type]
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
        # in :achPayment
        #   # ...
        # in :bookPayment
        #   # ...
        # in :wirePayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_PAYMENT = :achPayment
          BOOK_PAYMENT = :bookPayment
          WIRE_PAYMENT = :wirePayment

          finalize!
        end
      end

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown,
      #   type: String
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

        # @!attribute [r] attributes
        #
        #   @return [Object, nil]
        optional :attributes, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Object, nil]
        optional :relationships, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :relationships

        # @!attribute [r] type
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Object]
        #   # @param relationships [Object]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::PaymentListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::PaymentListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::PaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::PaymentListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::PaymentListResponse::Meta::Pagination]
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
