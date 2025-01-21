# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # application_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Application] === _1 },
    #   meta: Unit::Models::ApplicationListResponse::Meta
    # }
    # ```
    class ApplicationListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::Application>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Application] }

      # @!parse
      #   # @return [Array<Unit::Models::Application>]
      #   attr_writer :data

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::ApplicationListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::ApplicationListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::ApplicationListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::Application>]
      #   # @param meta [Unit::Models::ApplicationListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::ApplicationListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::ApplicationListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::ApplicationListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::ApplicationListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::ApplicationListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute [r] limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :offset

          # @!attribute [r] total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :total

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
