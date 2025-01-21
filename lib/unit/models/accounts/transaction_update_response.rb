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
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Accounts::Transaction, nil]
        optional :data, -> { Unit::Models::Accounts::Transaction }

        # @!parse
        #   # @return [Unit::Models::Accounts::Transaction]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Accounts::Transaction]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
