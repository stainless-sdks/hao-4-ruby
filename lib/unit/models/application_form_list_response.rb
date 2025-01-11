# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # application_form_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::ApplicationForm] === _1 }
    # }
    # ```
    class ApplicationFormListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::ApplicationForm>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::ApplicationForm] }

      # @!parse
      #   # @param data [Array<Unit::Models::ApplicationForm>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
