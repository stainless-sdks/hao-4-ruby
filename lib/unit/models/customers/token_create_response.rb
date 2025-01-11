# frozen_string_literal: true

module Unit
  module Models
    module Customers
      # @example
      #
      # ```ruby
      # token_create_response => {
      #   data: Unit::Models::Customers::TokenCreateResponse::Data
      # }
      # ```
      class TokenCreateResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Customers::TokenCreateResponse::Data]
        optional :data, -> { Unit::Models::Customers::TokenCreateResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Customers::TokenCreateResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Customers::TokenCreateResponse::Data::Attributes,
        #   type: Unit::Models::Customers::TokenCreateResponse::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Customers::TokenCreateResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::Customers::TokenCreateResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Customers::TokenCreateResponse::Data::Type]
          required :type, enum: -> { Unit::Models::Customers::TokenCreateResponse::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Customers::TokenCreateResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   token: String,
          #   expires_in: Integer
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute token
            #
            #   @return [String]
            optional :token, String

            # @!attribute expires_in
            #
            #   @return [Integer]
            optional :expires_in, Integer, api_name: :expiresIn

            # @!parse
            #   # @param token [String]
            #   # @param expires_in [Integer]
            #   #
            #   def initialize(token: nil, expires_in: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case type
          # in :customerBearerToken
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CUSTOMER_BEARER_TOKEN = :customerBearerToken

            finalize!
          end
        end
      end
    end
  end
end
