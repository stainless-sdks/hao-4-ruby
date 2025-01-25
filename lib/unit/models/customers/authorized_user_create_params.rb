# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class AuthorizedUserCreateParams < Unit::BaseModel
        # @!parse
        #   extend Unit::RequestParameters::Converter
        include Unit::RequestParameters

        # @!attribute [r] data
        #
        #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data, nil]
        optional :data, -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data }

        # @!parse
        #   # @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Customers::AuthorizedUserCreateParams::Data]
        #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(data: nil, request_options: {}, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes,
        #   type: Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes, nil]
          optional :attributes, -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes }

          # @!parse
          #   # @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   authorized_users: -> { Unit::ArrayOf[Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] authorized_users
            #
            #   @return [Array<Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser>]
            optional :authorized_users,
                     -> {
                       Unit::ArrayOf[Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser]
                     },
                     api_name: :authorizedUsers

            # @!parse
            #   # @return [Array<Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser>]
            #   attr_writer :authorized_users

            # @!parse
            #   # @param authorized_users [Array<Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser>]
            #   #
            #   def initialize(authorized_users: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # authorized_user => {
            #   email: String,
            #   full_name: Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::FullName,
            #   phone: Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::Phone,
            #   jwt_subject: String
            # }
            # ```
            class AuthorizedUser < Unit::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute full_name
              #
              #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::FullName]
              required :full_name,
                       -> {
                         Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::Phone]
              required :phone,
                       -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::Phone]
              #   # @param jwt_subject [String, nil]
              #   #
              #   def initialize(email:, full_name:, phone:, jwt_subject: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # full_name => {
              #   first: String,
              #   last: String
              # }
              # ```
              class FullName < Unit::BaseModel
                # @!attribute first
                #
                #   @return [String]
                required :first, String

                # @!attribute last
                #
                #   @return [String]
                required :last, String

                # @!parse
                #   # @param first [String]
                #   # @param last [String]
                #   #
                #   def initialize(first:, last:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void
              end

              # @example
              # ```ruby
              # phone => {
              #   country_code: String,
              #   number: String
              # }
              # ```
              class Phone < Unit::BaseModel
                # @!attribute country_code
                #
                #   @return [String]
                required :country_code, String, api_name: :countryCode

                # @!attribute number
                #
                #   @return [String]
                required :number, String

                # @!parse
                #   # @param country_code [String]
                #   # @param number [String]
                #   #
                #   def initialize(country_code:, number:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :addAuthorizedUsers
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ADD_AUTHORIZED_USERS = :addAuthorizedUsers

            finalize!
          end
        end
      end
    end
  end
end
