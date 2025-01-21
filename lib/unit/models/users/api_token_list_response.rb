# frozen_string_literal: true

module Unit
  module Models
    module Users
      # @example
      # ```ruby
      # api_token_list_response => {
      #   data: -> { Unit::ArrayOf[Unit::Models::Users::APITokenListResponse::Data] === _1 }
      # }
      # ```
      class APITokenListResponse < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Array<Unit::Models::Users::APITokenListResponse::Data>]
        optional :data, -> { Unit::ArrayOf[Unit::Models::Users::APITokenListResponse::Data] }

        # @!parse
        #   # @return [Array<Unit::Models::Users::APITokenListResponse::Data>]
        #   attr_writer :data

        # @!parse
        #   # @param data [Array<Unit::Models::Users::APITokenListResponse::Data>]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   id: String,
        #   attributes: Unit::Models::Users::APITokenListResponse::Data::Attributes,
        #   type: enum: Unit::Models::Users::APITokenListResponse::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute [r] id
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Users::APITokenListResponse::Data::Attributes, nil]
          optional :attributes, -> { Unit::Models::Users::APITokenListResponse::Data::Attributes }

          # @!parse
          #   # @return [Unit::Models::Users::APITokenListResponse::Data::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Users::APITokenListResponse::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Users::APITokenListResponse::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Users::APITokenListResponse::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param id [String]
          #   # @param attributes [Unit::Models::Users::APITokenListResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(id: nil, attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   created_at: Time,
          #   token: String,
          #   description: String,
          #   expiration: Time,
          #   source_ip: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute [r] token
            #
            #   @return [String, nil]
            optional :token, String

            # @!parse
            #   # @return [String]
            #   attr_writer :token

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] expiration
            #
            #   @return [Time, nil]
            optional :expiration, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :expiration

            # @!attribute [r] source_ip
            #
            #   @return [String, nil]
            optional :source_ip, String, api_name: :sourceIp

            # @!parse
            #   # @return [String]
            #   attr_writer :source_ip

            # @!parse
            #   # @param created_at [String]
            #   # @param token [String]
            #   # @param description [String]
            #   # @param expiration [String]
            #   # @param source_ip [String]
            #   #
            #   def initialize(created_at:, token: nil, description: nil, expiration: nil, source_ip: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
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
