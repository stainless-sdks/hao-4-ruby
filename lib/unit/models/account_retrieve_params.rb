# frozen_string_literal: true

module Unit
  module Models
    class AccountRetrieveParams < Unit::BaseModel
      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!parse
      #   # @param include [String]
      #   #
      #   def initialize(include: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
