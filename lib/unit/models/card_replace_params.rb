# frozen_string_literal: true

module Unit
  module Models
    class CardReplaceParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CardReplaceParams::Data]
      required :data, -> { Unit::Models::CardReplaceParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CardReplaceParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CardReplaceParams::Data::Attributes,
      #   type: Unit::Models::CardReplaceParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CardReplaceParams::Data::Attributes]
        required :attributes, -> { Unit::Models::CardReplaceParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CardReplaceParams::Data::Type]
        required :type, enum: -> { Unit::Models::CardReplaceParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CardReplaceParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   shipping_address: Unit::Models::CardReplaceParams::Data::Attributes::ShippingAddress
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute shipping_address
          #
          #   @return [Unit::Models::CardReplaceParams::Data::Attributes::ShippingAddress]
          required :shipping_address,
                   -> { Unit::Models::CardReplaceParams::Data::Attributes::ShippingAddress },
                   api_name: :shippingAddress

          # @!parse
          #   # @param shipping_address [Unit::Models::CardReplaceParams::Data::Attributes::ShippingAddress]
          #   #
          #   def initialize(shipping_address:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # shipping_address => {
          #   city: String,
          #   country: String,
          #   postal_code: String,
          #   state: String,
          #   street: String
          # }
          # ```
          class ShippingAddress < Unit::BaseModel
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
            optional :street2, String, nil?: true

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
        end

        # @example
        # ```ruby
        # case type
        # in :replaceCard
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          REPLACE_CARD = :replaceCard

          finalize!
        end
      end
    end
  end
end
