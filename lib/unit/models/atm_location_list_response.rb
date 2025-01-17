# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # atm_location_list_response_item => {
    #   attributes: Unit::Models::AtmLocationListResponseItem::Attributes,
    #   type: enum: Unit::Models::AtmLocationListResponseItem::Type
    # }
    # ```
    class AtmLocationListResponseItem < Unit::BaseModel
      # @!attribute attributes
      #
      #   @return [Unit::Models::AtmLocationListResponseItem::Attributes]
      required :attributes, -> { Unit::Models::AtmLocationListResponseItem::Attributes }

      # @!attribute type
      #
      #   @return [Symbol, Unit::Models::AtmLocationListResponseItem::Type]
      required :type, enum: -> { Unit::Models::AtmLocationListResponseItem::Type }

      # @!parse
      #   # @param attributes [Unit::Models::AtmLocationListResponseItem::Attributes]
      #   # @param type [String]
      #   #
      #   def initialize(attributes:, type:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # attributes => {
      #   accept_deposits: Unit::BooleanModel,
      #   address: Unit::Models::AtmLocationListResponseItem::Attributes::Address,
      #   coordinates: Unit::Models::AtmLocationListResponseItem::Attributes::Coordinates,
      #   distance: Integer,
      #   location_name: String,
      #   **_
      # }
      # ```
      class Attributes < Unit::BaseModel
        # @!attribute accept_deposits
        #
        #   @return [Boolean]
        optional :accept_deposits, Unit::BooleanModel, api_name: :acceptDeposits

        # @!attribute address
        #
        #   @return [Unit::Models::AtmLocationListResponseItem::Attributes::Address]
        optional :address, -> { Unit::Models::AtmLocationListResponseItem::Attributes::Address }

        # @!attribute coordinates
        #
        #   @return [Unit::Models::AtmLocationListResponseItem::Attributes::Coordinates]
        optional :coordinates, -> { Unit::Models::AtmLocationListResponseItem::Attributes::Coordinates }

        # @!attribute distance
        #
        #   @return [Integer]
        optional :distance, Integer

        # @!attribute location_name
        #
        #   @return [String]
        optional :location_name, String, api_name: :locationName

        # @!attribute network
        #
        #   @return [String]
        optional :network, String

        # @!attribute surcharge_free
        #
        #   @return [Boolean]
        optional :surcharge_free, Unit::BooleanModel, api_name: :surchargeFree

        # @!parse
        #   # @param accept_deposits [Boolean]
        #   # @param address [Unit::Models::AtmLocationListResponseItem::Attributes::Address]
        #   # @param coordinates [Unit::Models::AtmLocationListResponseItem::Attributes::Coordinates]
        #   # @param distance [Integer]
        #   # @param location_name [String]
        #   # @param network [String]
        #   # @param surcharge_free [Boolean]
        #   #
        #   def initialize(
        #     accept_deposits: nil,
        #     address: nil,
        #     coordinates: nil,
        #     distance: nil,
        #     location_name: nil,
        #     network: nil,
        #     surcharge_free: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   country: String,
        #   postal_code: String,
        #   state: String,
        #   street: String
        # }
        # ```
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
      # case type
      # in :atmLocation
      #   # ...
      # end
      # ```
      class Type < Unit::Enum
        ATM_LOCATION = :atmLocation

        finalize!
      end
    end

    AtmLocationListResponse = Unit::ArrayOf[-> { Unit::Models::AtmLocationListResponseItem }]
  end
end
