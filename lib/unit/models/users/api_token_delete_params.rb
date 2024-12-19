# frozen_string_literal: true

module Unit
  module Models
    module Users
      class APITokenDeleteParams < Unit::BaseModel
        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!parse
        #   # @param user_id [String]
        #   #
        #   def initialize(user_id:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
