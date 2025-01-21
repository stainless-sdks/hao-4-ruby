# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # card_update_response => {
    #   data: Unit::Models::Card
    # }
    # ```
    class CardUpdateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Card, nil]
      optional :data, -> { Unit::Models::Card }

      # @!parse
      #   # @return [Unit::Models::Card]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::Card]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
