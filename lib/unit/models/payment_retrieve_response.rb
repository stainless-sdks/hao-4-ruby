# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # payment_retrieve_response => {
    #   data: Unit::Models::PaymentRetrieveResponse::Data,
    #   included: -> { Unit::ArrayOf[Unit::Models::PaymentRetrieveResponse::Included] === _1 }
    # }
    # ```
    class PaymentRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentRetrieveResponse::Data]
      optional :data, -> { Unit::Models::PaymentRetrieveResponse::Data }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::PaymentRetrieveResponse::Included>]
      optional :included, Unit::ArrayOf[-> { Unit::Models::PaymentRetrieveResponse::Included }]

      # @!parse
      #   # @param data [Unit::Models::PaymentRetrieveResponse::Data]
      #   # @param included [Array<Unit::Models::PaymentRetrieveResponse::Included>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::PaymentRetrieveResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::PaymentRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::PaymentRetrieveResponse::Data::Type }

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
      #
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
    end
  end
end
