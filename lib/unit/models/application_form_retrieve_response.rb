# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # application_form_retrieve_response => {
    #   data: Unit::Models::ApplicationForm,
    #   included: Unit::Models::Application
    # }
    # ```
    class ApplicationFormRetrieveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::ApplicationForm, nil]
      optional :data, -> { Unit::Models::ApplicationForm }

      # @!parse
      #   # @return [Unit::Models::ApplicationForm]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Unit::Models::Application, nil]
      optional :included, -> { Unit::Models::Application }

      # @!parse
      #   # @return [Unit::Models::Application]
      #   attr_writer :included

      # @!parse
      #   # @param data [Unit::Models::ApplicationForm]
      #   # @param included [Unit::Models::Application]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
