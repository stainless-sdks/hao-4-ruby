# frozen_string_literal: true

module Unit
  module Models
    class PaymentUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentUpdateResponse::Data]
      optional :data, -> { Unit::Models::PaymentUpdateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentUpdateResponse::Data, nil]
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
        #   @return [Symbol, Unit::Models::PaymentUpdateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::PaymentUpdateResponse::Data::Type }

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
