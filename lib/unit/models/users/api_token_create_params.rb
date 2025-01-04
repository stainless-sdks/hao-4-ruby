# frozen_string_literal: true

module Unit
  module Models
    module Users
      class APITokenCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Users::APITokenCreateParams::Data]
        optional :data, -> { Unit::Models::Users::APITokenCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Users::APITokenCreateParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

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
            #   @return [Array<Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource>, nil]
            optional :resources,
                     Unit::ArrayOf[-> {
                       Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource
                     }]

            # @!attribute scope
            #
            #   @return [String]
            optional :scope, String

            # @!attribute source_ip
            #
            #   @return [String]
            optional :source_ip, String, api_name: :sourceIp

            # @!parse
            #   # @param description [String]
            #   # @param expiration [String]
            #   # @param resources [Array<Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource>, nil]
            #   # @param scope [String]
            #   # @param source_ip [String]
            #   #
            #   def initialize(description:, expiration:, resources: nil, scope: nil, source_ip: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Resource < Unit::BaseModel
              # @!attribute ids
              #
              #   @return [Array<String>]
              optional :ids, Unit::ArrayOf[String]

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type]
              optional :type,
                       enum: -> {
                         Unit::Models::Users::APITokenCreateParams::Data::Attributes::Resource::Type
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
              # case enum
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
          # case enum
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
