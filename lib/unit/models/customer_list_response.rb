# frozen_string_literal: true

module Unit
  module Models
    class CustomerListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::CustomerListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::CustomerListResponse::Data }]

      # @!attribute meta
      #
      #   @return [Unit::Models::CustomerListResponse::Meta]
      optional :meta, -> { Unit::Models::CustomerListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::CustomerListResponse::Data>, nil]
      #   # @param meta [Unit::Models::CustomerListResponse::Meta, nil]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CustomerListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerListResponse::Data::Type }

        # @!parse
        #   # @param id [String, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :individualCustomer
        #   # ...
        # in :businessCustomer
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          INDIVIDUAL_CUSTOMER = :individualCustomer
          BUSINESS_CUSTOMER = :businessCustomer
        end
      end

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::CustomerListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::CustomerListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::CustomerListResponse::Meta::Pagination, nil]
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
          #   # @param limit [Integer, nil]
          #   # @param offset [Integer, nil]
          #   # @param total [Integer, nil]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
