# frozen_string_literal: true

module Unit
  module Models
    class AtmLocationListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::AtmLocationListParams::Filter, nil]
      optional :filter, -> { Unit::Models::AtmLocationListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::AtmLocationListParams::Filter]
      #   attr_writer :filter

      # @!parse
      #   # @param filter [Unit::Models::AtmLocationListParams::Filter]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, request_options: {}, **) = super

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
        # @!attribute [r] address
        #
        #   @return [Object, nil]
        optional :address, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :address

        # @!attribute [r] coordinates
        #
        #   @return [Object, nil]
        optional :coordinates, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :coordinates

        # @!attribute [r] postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String, api_name: :postalCode

        # @!parse
        #   # @return [String]
        #   attr_writer :postal_code

        # @!attribute [r] search_radius
        #
        #   @return [Integer, nil]
        optional :search_radius, Integer, api_name: :searchRadius

        # @!parse
        #   # @return [Integer]
        #   attr_writer :search_radius

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
