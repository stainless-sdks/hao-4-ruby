# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class AuthorizedUserCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data]
        optional :data, -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Customers::AuthorizedUserCreateParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes]
          optional :attributes, -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type]
          optional :type, enum: -> { Unit::Models::Customers::AuthorizedUserCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute authorized_users
            #
            #   @return [Array<Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser>]
            optional :authorized_users,
                     Unit::ArrayOf[-> {
                       Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser
                     }],
                     api_name: :authorizedUsers

            # @!parse
            #   # @param authorized_users [Array<Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser>]
            #   #
            #   def initialize(authorized_users: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

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
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::Customers::AuthorizedUserCreateParams::Data::Attributes::AuthorizedUser::Phone]
              #   # @param jwt_subject [String, nil]
              #   #
              #   def initialize(email:, full_name:, phone:, jwt_subject: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

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
          #
          # ```ruby
          # case enum
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
