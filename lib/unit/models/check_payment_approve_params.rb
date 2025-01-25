# frozen_string_literal: true

module Unit
  module Models
    class CheckPaymentApproveParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::CheckPaymentApproveParams::Data, nil]
      optional :data, -> { Unit::Models::CheckPaymentApproveParams::Data }

      # @!parse
      #   # @return [Unit::Models::CheckPaymentApproveParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CheckPaymentApproveParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   type: Unit::Models::CheckPaymentApproveParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::CheckPaymentApproveParams::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CheckPaymentApproveParams::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CheckPaymentApproveParams::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param type [String]
        #   #
        #   def initialize(type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :additionalVerification
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ADDITIONAL_VERIFICATION = :additionalVerification

          finalize!
        end
      end
    end
  end
end
