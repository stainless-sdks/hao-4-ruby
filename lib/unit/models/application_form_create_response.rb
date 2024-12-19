# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationForm]
      optional :data, -> { Unit::Models::ApplicationForm }

      # @!parse
      #   # @param data [Unit::Models::ApplicationForm, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
