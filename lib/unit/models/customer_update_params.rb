# frozen_string_literal: true

module Unit
  module Models
    class CustomerUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer]
      optional :data, union: -> { Unit::Models::CustomerUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer
      #   # ...
      # in Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer }

        variant -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer }

        class UpdateIndividualCustomer < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes]
          optional :attributes,
                   -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type]
          optional :type,
                   enum: -> {
                     Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address, nil]
            optional :address,
                     -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address }

            # @!attribute authorized_users
            #
            #   @return [Array<Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser>, nil]
            optional :authorized_users,
                     Unit::ArrayOf[-> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser
                     }],
                     api_name: :authorizedUsers

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String

            # @!attribute email
            #
            #   @return [String, nil]
            optional :email, String

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject

            # @!attribute phone
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone, nil]
            optional :phone,
                     -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address, nil]
            #   # @param authorized_users [Array<Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser>, nil]
            #   # @param dba [String, nil]
            #   # @param email [String, nil]
            #   # @param jwt_subject [String, nil]
            #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone, nil]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(address: nil, authorized_users: nil, dba: nil, email: nil, jwt_subject: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
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
              optional :street2, String

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

            class AuthorizedUser < Unit::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute full_name
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::FullName]
              required :full_name,
                       -> {
                         Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::Phone]
              required :phone,
                       -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::Phone]
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

          # @example
          #
          # ```ruby
          # case enum
          # in :individualCustomer
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_CUSTOMER = :individualCustomer

            finalize!
          end
        end

        class UpdateBusinessCustomer < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes]
          optional :attributes,
                   -> {
                     Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type]
          optional :type, enum: -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address, nil]
            optional :address,
                     -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address }

            # @!attribute authorized_users
            #
            #   @return [Array<Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser>, nil]
            optional :authorized_users,
                     Unit::ArrayOf[-> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser
                     }],
                     api_name: :authorizedUsers

            # @!attribute contact
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact, nil]
            optional :contact,
                     -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact }

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String

            # @!attribute ein
            #
            #   @return [String]
            optional :ein, String

            # @!attribute phone
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone, nil]
            optional :phone,
                     -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address, nil]
            #   # @param authorized_users [Array<Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser>, nil]
            #   # @param contact [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact, nil]
            #   # @param dba [String, nil]
            #   # @param ein [String]
            #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone, nil]
            #   # @param tags [Hash{Symbol => String}, nil]
            #   #
            #   def initialize(address: nil, authorized_users: nil, contact: nil, dba: nil, ein: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
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
              optional :street2, String

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

            class AuthorizedUser < Unit::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute full_name
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::FullName]
              required :full_name,
                       -> {
                         Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::Phone]
              required :phone,
                       -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::Phone]
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

            class Contact < Unit::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute full_name
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::FullName]
              required :full_name,
                       -> {
                         Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::Phone]
              required :phone,
                       -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::Phone]
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

          # @example
          #
          # ```ruby
          # case enum
          # in :businessCustomer
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_CUSTOMER = :businessCustomer

            finalize!
          end
        end
      end
    end
  end
end
