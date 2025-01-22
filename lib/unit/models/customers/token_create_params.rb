# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class TokenCreateParams < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Customers::TokenCreateParams::Data, nil]
        optional :data, -> { Unit::Models::Customers::TokenCreateParams::Data }

        # @!parse
        #   # @return [Unit::Models::Customers::TokenCreateParams::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Customers::TokenCreateParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Customers::TokenCreateParams::Data::Attributes,
        #   type: Unit::Models::Customers::TokenCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Customers::TokenCreateParams::Data::Attributes, nil]
          optional :attributes, -> { Unit::Models::Customers::TokenCreateParams::Data::Attributes }

          # @!parse
          #   # @return [Unit::Models::Customers::TokenCreateParams::Data::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Customers::TokenCreateParams::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::Customers::TokenCreateParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   expires_in: Integer,
          #   jwt_token: String,
          #   resources: -> { Unit::ArrayOf[Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource] === _1 },
          #   scope: String,
          #   upgradable_scope: String,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] expires_in
            #
            #   @return [Integer, nil]
            optional :expires_in, Integer, api_name: :expiresIn

            # @!parse
            #   # @return [Integer]
            #   attr_writer :expires_in

            # @!attribute [r] jwt_token
            #
            #   @return [String, nil]
            optional :jwt_token, String, api_name: :jwtToken

            # @!parse
            #   # @return [String]
            #   attr_writer :jwt_token

            # @!attribute [r] resources
            #
            #   @return [Array<Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource>]
            optional :resources,
                     -> {
                       Unit::ArrayOf[Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource]
                     }

            # @!parse
            #   # @return [Array<Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource>]
            #   attr_writer :resources

            # @!attribute [r] scope
            #
            #   @return [String, nil]
            optional :scope, String

            # @!parse
            #   # @return [String]
            #   attr_writer :scope

            # @!attribute [r] upgradable_scope
            #
            #   @return [String, nil]
            optional :upgradable_scope, String, api_name: :upgradableScope

            # @!parse
            #   # @return [String]
            #   attr_writer :upgradable_scope

            # @!attribute [r] verification_code
            #
            #   @return [String, nil]
            optional :verification_code, String, api_name: :verificationCode

            # @!parse
            #   # @return [String]
            #   attr_writer :verification_code

            # @!attribute [r] verification_token
            #
            #   @return [String, nil]
            optional :verification_token, String, api_name: :verificationToken

            # @!parse
            #   # @return [String]
            #   attr_writer :verification_token

            # @!parse
            #   # @param expires_in [Integer]
            #   # @param jwt_token [String]
            #   # @param resources [Array<Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource>]
            #   # @param scope [String]
            #   # @param upgradable_scope [String]
            #   # @param verification_code [String]
            #   # @param verification_token [String]
            #   #
            #   def initialize(
            #     expires_in: nil,
            #     jwt_token: nil,
            #     resources: nil,
            #     scope: nil,
            #     upgradable_scope: nil,
            #     verification_code: nil,
            #     verification_token: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # resource => {
            #   ids: -> { Unit::ArrayOf[String] === _1 },
            #   type: Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type
            # }
            # ```
            class Resource < Unit::BaseModel
              # @!attribute [r] ids
              #
              #   @return [Array<String>]
              optional :ids, Unit::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :ids

              # @!attribute [r] type
              #
              #   @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type, nil]
              optional :type,
                       enum: -> {
                         Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type]
              #   attr_writer :type

              # @!parse
              #   # @param ids [Array<String>]
              #   # @param type [String]
              #   #
              #   def initialize(ids: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case type
              # in :card
              #   # ...
              # in :account
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                CARD = :card
                ACCOUNT = :account

                finalize!
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :customerToken
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            CUSTOMER_TOKEN = :customerToken

            finalize!
          end
        end
      end
    end
  end
end
