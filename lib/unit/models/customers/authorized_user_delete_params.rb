# frozen_string_literal: true

module Unit
  module Models
    module Customers
      class AuthorizedUserDeleteParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data]
        optional :data, -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Customers::AuthorizedUserDeleteParams::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes]
          optional :attributes, -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type]
          optional :type, enum: -> { Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Customers::AuthorizedUserDeleteParams::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute authorized_users_emails
            #
            #   @return [Array<String>]
            optional :authorized_users_emails, Unit::ArrayOf[String], api_name: :authorizedUsersEmails

            # @!parse
            #   # @param authorized_users_emails [Array<String>]
            #   #
            #   def initialize(authorized_users_emails: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          #
          # ```ruby
          # case enum
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
