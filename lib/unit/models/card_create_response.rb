# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # card_create_response => {
    #   data: Unit::Models::Card
    # }
    # ```
    class CardCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Card]
      optional :data, -> { Unit::Models::Card }

      # @!parse
      #   # @param data [Unit::Models::Card]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
