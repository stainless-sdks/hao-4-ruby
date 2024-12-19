# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      class TransactionRetrieveParams < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!parse
        #   # @param account_id [String]
        #   #
        #   def initialize(account_id:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
