# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # payment_retrieve_response => {
    #   data: Unit::Models::PaymentRetrieveResponse::Data,
    #   included: -> { Unit::ArrayOf[Unit::Models::PaymentRetrieveResponse::Included] === _1 }
    # }
    # ```
    class PaymentRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::PaymentRetrieveResponse::Data, nil]
      optional :data, -> { Unit::Models::PaymentRetrieveResponse::Data }

      # @!parse
      #   # @return [Unit::Models::PaymentRetrieveResponse::Data]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::PaymentRetrieveResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::PaymentRetrieveResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::PaymentRetrieveResponse::Included>]
      #   attr_writer :included

      # @!parse
      #   # @param data [Unit::Models::PaymentRetrieveResponse::Data]
      #   # @param included [Array<Unit::Models::PaymentRetrieveResponse::Included>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::PaymentRetrieveResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::PaymentRetrieveResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::PaymentRetrieveResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::PaymentRetrieveResponse::Data::Type]
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
    end
  end
end
