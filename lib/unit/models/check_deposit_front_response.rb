# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # check_deposit_front_response => {
    #   data: String
    # }
    # ```
    class CheckDepositFrontResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [String, nil]
      optional :data, String

      # @!parse
      #   # @return [String]
      #   attr_writer :data

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
