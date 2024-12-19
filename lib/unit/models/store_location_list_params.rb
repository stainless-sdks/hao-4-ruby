# frozen_string_literal: true

module Unit
  module Models
    class StoreLocationListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::StoreLocationListParams::Filter]
      optional :filter, -> { Unit::Models::StoreLocationListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::StoreLocationListParams::Page]
      optional :page, -> { Unit::Models::StoreLocationListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::StoreLocationListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::StoreLocationListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute service_type
        #
        #   @return [Symbol, Unit::Models::StoreLocationListParams::Filter::ServiceType]
        required :service_type,
                 api_name: :serviceType,
                 enum: -> { Unit::Models::StoreLocationListParams::Filter::ServiceType }

        # @!attribute coordinates
        #
        #   @return [Unit::Models::StoreLocationListParams::Filter::Coordinates]
        optional :coordinates, -> { Unit::Models::StoreLocationListParams::Filter::Coordinates }

        # @!attribute postal_code
        #
        #   @return [String]
        optional :postal_code, String, api_name: :postalCode

        # @!parse
        #   # @param service_type [String]
        #   # @param coordinates [Unit::Models::StoreLocationListParams::Filter::Coordinates, nil]
        #   # @param postal_code [String, nil]
        #   #
        #   def initialize(service_type:, coordinates: nil, postal_code: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :Swipe
        #   # ...
        # in :Barcode
        #   # ...
        # end
        # ```
        class ServiceType < Unit::Enum
          SWIPE = :Swipe
          BARCODE = :Barcode
        end

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

      class Page < Unit::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        optional :offset, Integer

        # @!parse
        #   # Parameters for paginated list requests
        #   #
        #   # @param limit [Integer, nil]
        #   # @param offset [Integer, nil]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
