# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # application_form_create_response => {
    #   data: Unit::Models::ApplicationForm
    # }
    # ```
    class ApplicationFormCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationForm]
      optional :data, -> { Unit::Models::ApplicationForm }

      # @!parse
      #   # @param data [Unit::Models::ApplicationForm]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
