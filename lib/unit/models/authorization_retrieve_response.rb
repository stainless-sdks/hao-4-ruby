# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # authorization_retrieve_response => {
    #   data: Unit::Models::Authorization
    # }
    # ```
    class AuthorizationRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Authorization]
      optional :data, -> { Unit::Models::Authorization }

      # @!parse
      #   # @param data [Unit::Models::Authorization]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
