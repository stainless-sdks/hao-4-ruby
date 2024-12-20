# frozen_string_literal: true

module Unit
  module Models
    class StopPaymentList < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::StopPaymentList::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::StopPaymentList::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::StopPaymentList::Data>, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        # case enum
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
