# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationForm]
      optional :data, -> { Unit::Models::ApplicationForm }

      # @!attribute included
      #
      #   @return [Unit::Models::Application]
      optional :included, -> { Unit::Models::Application }

      # @!parse
      #   # @param data [Unit::Models::ApplicationForm]
      #   # @param included [Unit::Models::Application]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
