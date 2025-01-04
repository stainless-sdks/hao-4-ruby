# frozen_string_literal: true

module Unit
  module Models
    class ApplicationListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::Application>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::Application }]

      # @!attribute meta
      #
      #   @return [Unit::Models::ApplicationListResponse::Meta]
      optional :meta, -> { Unit::Models::ApplicationListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::Application>]
      #   # @param meta [Unit::Models::ApplicationListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::ApplicationListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::ApplicationListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::ApplicationListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Pagination < Unit::BaseModel
          # @!attribute limit
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          optional :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          optional :total, Integer

          # @!parse
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   # @param total [Integer]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
