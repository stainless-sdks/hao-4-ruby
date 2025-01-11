# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # account_update_response => {
    #   data: Unit::Models::Account
    # }
    # ```
    class AccountUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Account]
      optional :data, -> { Unit::Models::Account }

      # @!parse
      #   # @param data [Unit::Models::Account]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
