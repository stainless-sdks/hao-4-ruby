# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # card_unfreeze_response => {
    #   data: Unit::Models::Card
    # }
    # ```
    class CardUnfreezeResponse < Unit::BaseModel
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
