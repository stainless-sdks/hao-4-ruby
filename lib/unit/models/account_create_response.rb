# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # account_create_response => {
    #   data: Unit::Models::Account
    # }
    # ```
    class AccountCreateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Account, nil]
      optional :data, -> { Unit::Models::Account }

      # @!parse
      #   # @return [Unit::Models::Account]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::Account]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
