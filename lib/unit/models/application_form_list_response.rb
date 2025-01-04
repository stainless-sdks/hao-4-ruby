# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::ApplicationForm>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::ApplicationForm }]

      # @!parse
      #   # @param data [Array<Unit::Models::ApplicationForm>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void
    end
  end
end
