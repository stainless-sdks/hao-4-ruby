# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # payment_create_response => {
    #   data: Unit::Models::PaymentCreateResponse::Data
    # }
    # ```
    class PaymentCreateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::PaymentCreateResponse::Data, nil]
      optional :data, -> { Unit::Models::PaymentCreateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::PaymentCreateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::PaymentCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::PaymentCreateResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::PaymentCreateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::PaymentCreateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::PaymentCreateResponse::Data::Type]
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
    end
  end
end
