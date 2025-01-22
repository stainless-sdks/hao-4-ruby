# frozen_string_literal: true

module Unit
  module Models
    module Customers
      # @example
      # ```ruby
      # authorized_user_delete_response => {
      #   data: Unit::Models::Customers::AuthorizedUserDeleteResponse::Data
      # }
      # ```
      class AuthorizedUserDeleteResponse < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Customers::AuthorizedUserDeleteResponse::Data, nil]
        optional :data, -> { Unit::Models::Customers::AuthorizedUserDeleteResponse::Data }

        # @!parse
        #   # @return [Unit::Models::Customers::AuthorizedUserDeleteResponse::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Customers::AuthorizedUserDeleteResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   id: String,
        #   type: Unit::Models::Customers::AuthorizedUserDeleteResponse::Data::Type
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

          # @!attribute [r] type
          #
          #   @return [Symbol, Unit::Models::Customers::AuthorizedUserDeleteResponse::Data::Type, nil]
          optional :type, enum: -> { Unit::Models::Customers::AuthorizedUserDeleteResponse::Data::Type }

          # @!parse
          #   # @return [Symbol, Unit::Models::Customers::AuthorizedUserDeleteResponse::Data::Type]
          #   attr_writer :type

          # @!parse
          #   # @param id [String]
          #   # @param type [String]
          #   #
          #   def initialize(id: nil, type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case type
          # in :individualCustomer
          #   # ...
          # in :businessCustomer
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_CUSTOMER = :individualCustomer
            BUSINESS_CUSTOMER = :businessCustomer

            finalize!
          end
        end
      end
    end
  end
end
