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
      # @!attribute data
      #
      #   @return [String]
      optional :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
