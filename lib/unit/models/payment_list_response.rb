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
      # @!attribute data
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Data] }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::PaymentListResponse::Included] }

      # @!attribute meta
      #
      #   @return [Unit::Models::PaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::PaymentListResponse::Meta }

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
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::PaymentListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::PaymentListResponse::Data::Type }

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
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Object]
        optional :attributes, Unit::Unknown

        # @!attribute relationships
        #
        #   @return [Object]
        optional :relationships, Unit::Unknown

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

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
        # @!attribute pagination
        #
        #   @return [Unit::Models::PaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::PaymentListResponse::Meta::Pagination }

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
