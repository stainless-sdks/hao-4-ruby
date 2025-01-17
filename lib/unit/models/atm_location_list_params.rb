# frozen_string_literal: true

module Unit
  module Models
    class AtmLocationListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AtmLocationListParams::Filter]
      optional :filter, -> { Unit::Models::AtmLocationListParams::Filter }

      # @!parse
      #   # @param filter [Unit::Models::AtmLocationListParams::Filter]
      #   #
      #   def initialize(filter: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   address: Unit::Unknown,
      #   coordinates: Unit::Unknown,
      #   postal_code: String,
      #   search_radius: Integer
      # }
      # ```
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
        #   # @param address [Object]
        #   # @param coordinates [Object]
        #   # @param postal_code [String]
        #   # @param search_radius [Integer]
        #   #
        #   def initialize(address: nil, coordinates: nil, postal_code: nil, search_radius: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
