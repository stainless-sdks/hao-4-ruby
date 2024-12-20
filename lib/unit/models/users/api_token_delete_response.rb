# frozen_string_literal: true

module Unit
  module Models
    module Users
      class APITokenDeleteResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Users::APITokenDeleteResponse::Data]
        optional :data, -> { Unit::Models::Users::APITokenDeleteResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Users::APITokenDeleteResponse::Data, nil]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute id
          #
          #   @return [String]
          optional :id, String

          # @!attribute attributes
          #
          #   @return [Unit::Models::Users::APITokenDeleteResponse::Data::Attributes]
          optional :attributes, -> { Unit::Models::Users::APITokenDeleteResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Users::APITokenDeleteResponse::Data::Type]
          optional :type, enum: -> { Unit::Models::Users::APITokenDeleteResponse::Data::Type }

          # @!parse
          #   # @param id [String, nil]
          #   # @param attributes [Unit::Models::Users::APITokenDeleteResponse::Data::Attributes, nil]
          #   # @param type [String, nil]
          #   #
          #   def initialize(id: nil, attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute token
            #
            #   @return [String]
            optional :token, String

            # @!attribute description
            #
            #   @return [String]
            optional :description, String

            # @!attribute expiration
            #
            #   @return [Time]
            optional :expiration, Time

            # @!attribute source_ip
            #
            #   @return [String]
            optional :source_ip, String, api_name: :sourceIp

            # @!parse
            #   # @param created_at [String]
            #   # @param token [String, nil]
            #   # @param description [String, nil]
            #   # @param expiration [String, nil]
            #   # @param source_ip [String, nil]
            #   #
            #   def initialize(created_at:, token: nil, description: nil, expiration: nil, source_ip: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
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
