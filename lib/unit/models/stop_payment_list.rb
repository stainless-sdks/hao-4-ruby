# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # stop_payment_list => {
    #   data: -> { Unit::ArrayOf[Unit::Models::StopPaymentList::Data] === _1 }
    # }
    # ```
    class StopPaymentList < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::StopPaymentList::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::StopPaymentList::Data] }

      # @!parse
      #   # @param data [Array<Unit::Models::StopPaymentList::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::StopPaymentList::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::StopPaymentList::Data::Type]
        required :type, enum: -> { Unit::Models::StopPaymentList::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case type
        # in :checkStopPayment
        #   # ...
        # in :achStopPayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          CHECK_STOP_PAYMENT = :checkStopPayment
          ACH_STOP_PAYMENT = :achStopPayment

          finalize!
        end
      end
    end
  end
end
