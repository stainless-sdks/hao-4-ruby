# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # authorization_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Authorization] === _1 }
    # }
    # ```
    class AuthorizationListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::Authorization>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Authorization] }

      # @!parse
      #   # @param data [Array<Unit::Models::Authorization>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
