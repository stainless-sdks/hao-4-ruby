# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # payment_update_response => {
    #   data: Unit::Models::PaymentUpdateResponse::Data
    # }
    # ```
    class PaymentUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::PaymentUpdateResponse::Data]
      optional :data, -> { Unit::Models::PaymentUpdateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::PaymentUpdateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::PaymentUpdateResponse::Data::Type
      # }
      # ```
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
