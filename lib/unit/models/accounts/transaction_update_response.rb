# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      # @example
      # ```ruby
      # transaction_update_response => {
      #   data: Unit::Models::Accounts::Transaction
      # }
      # ```
      class TransactionUpdateResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Accounts::Transaction]
        optional :data, -> { Unit::Models::Accounts::Transaction }

        # @!parse
        #   # @param data [Unit::Models::Accounts::Transaction]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
