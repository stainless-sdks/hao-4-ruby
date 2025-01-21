# frozen_string_literal: true

module Unit
  module Models
    module Users
      class APITokenCreateParams < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Users::APITokenCreateParams::Data, nil]
        optional :data, -> { Unit::Models::Users::APITokenCreateParams::Data }

        # @!parse
        #   # @return [Unit::Models::Users::APITokenCreateParams::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Users::APITokenCreateParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Users::APITokenCreateParams::Data::Attributes,
        #   type: enum: Unit::Models::Users::APITokenCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Users::APITokenCreateParams::Data::Attributes]
          required :attributes, -> { Unit::Models::Users::APITokenCreateParams::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Users::APITokenCreateParams::Data::Type]
          required :type, enum: -> { Unit::Models::Users::APITokenCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Users::APITokenCreateParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   description: String,
          #   expiration: Time,
          #   resources: -> { Unit::ArrayOf[Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource] === _1 },
          #   scope: String,
          #   source_ip: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute expiration
            #
            #   @return [Time]
            required :expiration, Time

            # @!attribute resources
            #
            #   @return [Array<Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource>]
            optional :resources,
                     -> {
                       Unit::ArrayOf[Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource]
                     },
                     nil?: true

            # @!attribute [r] scope
            #
            #   @return [String, nil]
            optional :scope, String

            # @!parse
            #   # @return [String]
            #   attr_writer :scope

            # @!attribute [r] source_ip
            #
            #   @return [String, nil]
            optional :source_ip, String, api_name: :sourceIp

            # @!parse
            #   # @return [String]
            #   attr_writer :source_ip

            # @!parse
            #   # @param description [String]
            #   # @param expiration [String]
            #   # @param resources [Array<Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource>]
            #   # @param scope [String]
            #   # @param source_ip [String]
            #   #
            #   def initialize(description:, expiration:, resources: nil, scope: nil, source_ip: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # resource => {
            #   ids: -> { Unit::ArrayOf[String] === _1 },
            #   type: enum: Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type
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
              #   @return [Symbol, Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type, nil]
              optional :type,
                       enum: -> {
                         Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type]
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
          # in :apiToken
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            API_TOKEN = :apiToken

            finalize!
          end
        end
      end
    end
  end
end
