# frozen_string_literal: true

module Unit
  module Models
    class CustomerUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CustomerUpdateResponse::Data]
      optional :data, -> { Unit::Models::CustomerUpdateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CustomerUpdateResponse::Data]
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
        #   @return [Symbol, Unit::Models::CustomerUpdateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerUpdateResponse::Data::Type }

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