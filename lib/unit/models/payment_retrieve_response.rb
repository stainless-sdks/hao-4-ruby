# frozen_string_literal: true

module Unit
  module Models
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
      #   # @param data [Unit::Models::PaymentRetrieveResponse::Data, nil]
      #   # @param included [Array<Unit::Models::PaymentRetrieveResponse::Included>, nil]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
    end
  end
end
