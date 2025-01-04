# frozen_string_literal: true

module Unit
  module Models
    class StoreLocationListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::StoreLocationListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::StoreLocationListResponse::Data }]

      # @!attribute meta
      #
      #   @return [Unit::Models::StoreLocationListResponse::Meta]
      optional :meta, -> { Unit::Models::StoreLocationListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::StoreLocationListResponse::Data>]
      #   # @param meta [Unit::Models::StoreLocationListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::StoreLocationListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::StoreLocationListResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::StoreLocationListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::StoreLocationListResponse::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::StoreLocationListResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute address
          #
          #   @return [Unit::Models::StoreLocationListResponse::Data::Attributes::Address]
          required :address, -> { Unit::Models::StoreLocationListResponse::Data::Attributes::Address }

          # @!attribute coordinates
          #
          #   @return [Unit::Models::StoreLocationListResponse::Data::Attributes::Coordinates]
          required :coordinates, -> { Unit::Models::StoreLocationListResponse::Data::Attributes::Coordinates }

          # @!attribute distance
          #
          #   @return [Float]
          required :distance, Float

          # @!attribute phone
          #
          #   @return [String]
          required :phone, String

          # @!attribute retailer_name
          #
          #   @return [String]
          required :retailer_name, String, api_name: :retailerName

          # @!attribute store_id
          #
          #   @return [String]
          required :store_id, String, api_name: :storeId

          # @!parse
          #   # @param address [Unit::Models::StoreLocationListResponse::Data::Attributes::Address]
          #   # @param coordinates [Unit::Models::StoreLocationListResponse::Data::Attributes::Coordinates]
          #   # @param distance [Float]
          #   # @param phone [String]
          #   # @param retailer_name [String]
          #   # @param store_id [String]
          #   #
          #   def initialize(address:, coordinates:, distance:, phone:, retailer_name:, store_id:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Address < Unit::BaseModel
            # @!attribute city
            #
            #   @return [String]
            required :city, String

            # @!attribute country
            #
            #   @return [String]
            required :country, String

            # @!attribute postal_code
            #
            #   @return [String]
            required :postal_code, String, api_name: :postalCode

            # @!attribute state
            #
            #   @return [String]
            required :state, String

            # @!attribute street
            #
            #   @return [String]
            required :street, String

            # @!attribute street2
            #
            #   @return [String, nil]
            optional :street2, String

            # @!parse
            #   # @param city [String]
            #   # @param country [String]
            #   # @param postal_code [String]
            #   # @param state [String]
            #   # @param street [String]
            #   # @param street2 [String, nil]
            #   #
            #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
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

        # @example
        #
        # ```ruby
        # case enum
        # in :storeLocation
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          STORE_LOCATION = :storeLocation

          finalize!
        end
      end

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::StoreLocationListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::StoreLocationListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::StoreLocationListResponse::Meta::Pagination]
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
