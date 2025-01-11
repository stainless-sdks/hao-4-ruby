# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class TokenCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Customers::TokenCreateParams::Data]
        optional :data, -> { Unit::Models::Customers::TokenCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Customers::TokenCreateParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Customers::TokenCreateParams::Data::Attributes,
        #   type: Unit::Models::Customers::TokenCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Customers::TokenCreateParams::Data::Attributes]
          optional :attributes, -> { Unit::Models::Customers::TokenCreateParams::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Type]
          optional :type, enum: -> { Unit::Models::Customers::TokenCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Customers::TokenCreateParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
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
            # @!attribute expires_in
            #
            #   @return [Integer]
            optional :expires_in, Integer, api_name: :expiresIn

            # @!attribute jwt_token
            #
            #   @return [String]
            optional :jwt_token, String, api_name: :jwtToken

            # @!attribute resources
            #
            #   @return [Array<Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource>]
            optional :resources,
                     Unit::ArrayOf[-> {
                       Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource
                     }]

            # @!attribute scope
            #
            #   @return [String]
            optional :scope, String

            # @!attribute upgradable_scope
            #
            #   @return [String]
            optional :upgradable_scope, String, api_name: :upgradableScope

            # @!attribute verification_code
            #
            #   @return [String]
            optional :verification_code, String, api_name: :verificationCode

            # @!attribute verification_token
            #
            #   @return [String]
            optional :verification_token, String, api_name: :verificationToken

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
            #
            # ```ruby
            # resource => {
            #   ids: -> { Unit::ArrayOf[String] === _1 },
            #   type: Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type
            # }
            # ```
            class Resource < Unit::BaseModel
              # @!attribute ids
              #
              #   @return [Array<String>]
              optional :ids, Unit::ArrayOf[String]

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type]
              optional :type,
                       enum: -> {
                         Unit::Models::Customers::TokenCreateParams::Data::Attributes::Resource::Type
                       }

              # @!parse
              #   # @param ids [Array<String>]
              #   # @param type [String]
              #   #
              #   def initialize(ids: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
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
          #
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
