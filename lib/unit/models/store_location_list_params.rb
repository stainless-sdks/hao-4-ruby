# frozen_string_literal: true

module Unit
  module Models
    class StoreLocationListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::StoreLocationListParams::Filter, nil]
      optional :filter, -> { Unit::Models::StoreLocationListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::StoreLocationListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::StoreLocationListParams::Page, nil]
      optional :page, -> { Unit::Models::StoreLocationListParams::Page }

      # @!parse
      #   # @return [Unit::Models::StoreLocationListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::StoreLocationListParams::Filter]
      #   # @param page [Unit::Models::StoreLocationListParams::Page]
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   service_type: Unit::Models::StoreLocationListParams::Filter::ServiceType,
      #   coordinates: Unit::Models::StoreLocationListParams::Filter::Coordinates,
      #   postal_code: String
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute service_type
        #
        #   @return [Symbol, Unit::Models::StoreLocationListParams::Filter::ServiceType]
        required :service_type,
                 enum: -> { Unit::Models::StoreLocationListParams::Filter::ServiceType },
                 api_name: :serviceType

        # @!attribute [r] coordinates
        #
        #   @return [Unit::Models::StoreLocationListParams::Filter::Coordinates, nil]
        optional :coordinates, -> { Unit::Models::StoreLocationListParams::Filter::Coordinates }

        # @!parse
        #   # @return [Unit::Models::StoreLocationListParams::Filter::Coordinates]
        #   attr_writer :coordinates

        # @!attribute [r] postal_code
        #
        #   @return [String, nil]
        optional :postal_code, String, api_name: :postalCode

        # @!parse
        #   # @return [String]
        #   attr_writer :postal_code

        # @!parse
        #   # @param service_type [String]
        #   # @param coordinates [Unit::Models::StoreLocationListParams::Filter::Coordinates]
        #   # @param postal_code [String]
        #   #
        #   def initialize(service_type:, coordinates: nil, postal_code: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case service_type
        # in :Swipe
        #   # ...
        # in :Barcode
        #   # ...
        # end
        # ```
        class ServiceType < Unit::Enum
          SWIPE = :Swipe
          BARCODE = :Barcode

          finalize!
        end

        # @example
        # ```ruby
        # coordinates => {
        #   latitude: Float,
        #   longitude: Float
        # }
        # ```
        class Coordinates < Unit::BaseModel
          # @!attribute latitude
          #
          #   @return [Float]
          required :latitude, Float

          # @!attribute longitude
          #
          #   @return [Float]
          required :longitude, Float

          # @!parse
          #   # @param latitude [Float]
          #   # @param longitude [Float]
          #   #
          #   def initialize(latitude:, longitude:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # page => {
      #   limit: Integer,
      #   offset: Integer
      # }
      # ```
      class Page < Unit::BaseModel
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

        # @!parse
        #   # Parameters for paginated list requests
        #   #
        #   # @param limit [Integer]
        #   # @param offset [Integer]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
