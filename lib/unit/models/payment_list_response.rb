# frozen_string_literal: true

module Unit
  module Models
    class PaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::PaymentListResponse::Data }]

      # @!attribute included
      #
      #   @return [Array<Unit::Models::PaymentListResponse::Included>]
      optional :included, Unit::ArrayOf[-> { Unit::Models::PaymentListResponse::Included }]

      # @!attribute meta
      #
      #   @return [Unit::Models::PaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::PaymentListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::PaymentListResponse::Data>, nil]
      #   # @param included [Array<Unit::Models::PaymentListResponse::Included>, nil]
      #   # @param meta [Unit::Models::PaymentListResponse::Meta, nil]
      #   #
      #   def initialize(data: nil, included: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        #   # @param id [String, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        #   # @param id [String, nil]
        #   # @param attributes [Object, nil]
        #   # @param relationships [Object, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::PaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::PaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::PaymentListResponse::Meta::Pagination, nil]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

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
          #   # @param limit [Integer, nil]
          #   # @param offset [Integer, nil]
          #   # @param total [Integer, nil]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
