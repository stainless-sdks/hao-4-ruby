# frozen_string_literal: true

module Unit
  module Models
    class CustomerRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CustomerRetrieveResponse::Data]
      optional :data, -> { Unit::Models::CustomerRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CustomerRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CustomerRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerRetrieveResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
