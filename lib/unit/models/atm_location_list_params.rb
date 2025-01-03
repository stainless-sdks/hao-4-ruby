# frozen_string_literal: true

module Unit
  module Models
    class AtmLocationListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AtmLocationListParams::Filter]
      optional :filter, -> { Unit::Models::AtmLocationListParams::Filter }

      # @!parse
      #   # @param filter [Unit::Models::AtmLocationListParams::Filter, nil]
      #   #
      #   def initialize(filter: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute address
        #
        #   @return [Object]
        optional :address, Unit::Unknown

        # @!attribute coordinates
        #
        #   @return [Object]
        optional :coordinates, Unit::Unknown

        # @!attribute postal_code
        #
        #   @return [String]
        optional :postal_code, String, api_name: :postalCode

        # @!attribute search_radius
        #
        #   @return [Integer]
        optional :search_radius, Integer, api_name: :searchRadius

        # @!parse
        #   # @param address [Object, nil]
        #   # @param coordinates [Object, nil]
        #   # @param postal_code [String, nil]
        #   # @param search_radius [Integer, nil]
        #   #
        #   def initialize(address: nil, coordinates: nil, postal_code: nil, search_radius: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
