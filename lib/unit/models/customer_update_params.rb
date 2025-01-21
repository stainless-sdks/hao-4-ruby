# frozen_string_literal: true

module Unit
  module Models
    class CustomerUpdateParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer, nil]
      optional :data, union: -> { Unit::Models::CustomerUpdateParams::Data }

      # @!parse
      #   # @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case data
      # in Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer
      #   # ...
      # in Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer }

        variant -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer }

        # @example
        # ```ruby
        # update_individual_customer => {
        #   attributes: Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes,
        #   type: enum: Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type
        # }
        # ```
        class UpdateIndividualCustomer < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes, nil]
          optional :attributes,
                   -> { Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes }

          # @!parse
          #   # @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type, nil]
          optional :type,
                   enum: -> {
                     Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type
                   }

          # @!parse
          #   # @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address,
          #   authorized_users: -> { Unit::ArrayOf[Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser] === _1 },
          #   dba: String,
          #   email: String,
          #   jwt_subject: String,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address, nil]
            optional :address,
                     -> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address
                     },
                     nil?: true

            # @!attribute authorized_users
            #
            #   @return [Array<Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser>]
            optional :authorized_users,
                     -> {
                       Unit::ArrayOf[Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser]
                     },
                     api_name: :authorizedUsers,
                     nil?: true

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String, nil?: true

            # @!attribute email
            #
            #   @return [String, nil]
            optional :email, String, nil?: true

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

            # @!attribute phone
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone, nil]
            optional :phone,
                     -> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone
                     },
                     nil?: true

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param address [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Address, nil]
            #   # @param authorized_users [Array<Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser>]
            #   # @param dba [String, nil]
            #   # @param email [String, nil]
            #   # @param jwt_subject [String, nil]
            #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::Phone, nil]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(address: nil, authorized_users: nil, dba: nil, email: nil, jwt_subject: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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
              optional :street2, String, nil?: true

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

            # @example
            # ```ruby
            # authorized_user => {
            #   email: String,
            #   full_name: Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::FullName,
            #   phone: Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::Phone,
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
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateIndividualCustomer::Attributes::AuthorizedUser::Phone]
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

          # @example
          # ```ruby
          # case type
          # in :individualCustomer
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_CUSTOMER = :individualCustomer

            finalize!
          end
        end

        # @example
        # ```ruby
        # update_business_customer => {
        #   attributes: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes,
        #   type: enum: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type
        # }
        # ```
        class UpdateBusinessCustomer < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes, nil]
          optional :attributes,
                   -> {
                     Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes
                   }

          # @!parse
          #   # @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type, nil]
          optional :type, enum: -> { Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address,
          #   authorized_users: -> { Unit::ArrayOf[Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser] === _1 },
          #   contact: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact,
          #   dba: String,
          #   ein: String,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address, nil]
            optional :address,
                     -> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address
                     },
                     nil?: true

            # @!attribute authorized_users
            #
            #   @return [Array<Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser>]
            optional :authorized_users,
                     -> {
                       Unit::ArrayOf[Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser]
                     },
                     api_name: :authorizedUsers,
                     nil?: true

            # @!attribute contact
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact, nil]
            optional :contact,
                     -> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact
                     },
                     nil?: true

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String, nil?: true

            # @!attribute [r] ein
            #
            #   @return [String, nil]
            optional :ein, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ein

            # @!attribute phone
            #
            #   @return [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone, nil]
            optional :phone,
                     -> {
                       Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone
                     },
                     nil?: true

            # @!attribute tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String], nil?: true

            # @!parse
            #   # @param address [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Address, nil]
            #   # @param authorized_users [Array<Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser>]
            #   # @param contact [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact, nil]
            #   # @param dba [String, nil]
            #   # @param ein [String]
            #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Phone, nil]
            #   # @param tags [Hash{Symbol=>String}, nil]
            #   #
            #   def initialize(address: nil, authorized_users: nil, contact: nil, dba: nil, ein: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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
              optional :street2, String, nil?: true

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

            # @example
            # ```ruby
            # authorized_user => {
            #   email: String,
            #   full_name: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::FullName,
            #   phone: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::Phone,
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
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::AuthorizedUser::Phone]
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

            # @example
            # ```ruby
            # contact => {
            #   email: String,
            #   full_name: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::FullName,
            #   phone: Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::Phone,
            #   jwt_subject: String
            # }
            # ```
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
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::FullName]
              #   # @param phone [Unit::Models::CustomerUpdateParams::Data::UpdateBusinessCustomer::Attributes::Contact::Phone]
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

          # @example
          # ```ruby
          # case type
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
