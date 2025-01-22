# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class AuthorizedUserDeleteParams < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data, nil]
        optional :data, -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data }

        # @!parse
        #   # @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Customers::AuthorizedUserDeleteParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes,
        #   type: Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes, nil]
          optional :attributes, -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes }

          # @!parse
          #   # @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes]
          #   attr_writer :attributes

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param attributes [Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   authorized_users_emails: -> { Unit::ArrayOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute [r] authorized_users_emails
            #
            #   @return [Array<String>]
            optional :authorized_users_emails, Unit::ArrayOf[String], api_name: :authorizedUsersEmails

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :authorized_users_emails

            # @!parse
            #   # @param authorized_users_emails [Array<String>]
            #   #
            #   def initialize(authorized_users_emails: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # case type
          # in :removeAuthorizedUsers
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            REMOVE_AUTHORIZED_USERS = :removeAuthorizedUsers

            finalize!
          end
        end
      end
    end
  end
end
