# frozen_string_literal: true

module Unit
  module Models
    class PaymentCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentCreateResponse::Data]
      optional :data, -> { Unit::Models::PaymentCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentCreateResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::PaymentCreateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::PaymentCreateResponse::Data::Type }

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
        end
      end
    end
  end
end
