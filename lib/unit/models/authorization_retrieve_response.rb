# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization_retrieve_response => {
    #   data: Unit::Models::Authorization
    # }
    # ```
    class AuthorizationRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::Authorization, nil]
      optional :data, -> { Unit::Models::Authorization }

      # @!parse
      #   # @return [Unit::Models::Authorization]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::Authorization]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
