# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # stop_payment => {
    #   data: Unit::Models::StopPayment::Data
    # }
    # ```
    class StopPayment < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::StopPayment::Data]
      optional :data, -> { Unit::Models::StopPayment::Data }

      # @!parse
      #   # @param data [Unit::Models::StopPayment::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::StopPayment::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::StopPayment::Data::Type]
        required :type, enum: -> { Unit::Models::StopPayment::Data::Type }

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
