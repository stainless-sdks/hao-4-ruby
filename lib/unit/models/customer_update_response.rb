# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # customer_update_response => {
    #   data: Unit::Models::CustomerUpdateResponse::Data
    # }
    # ```
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

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::CustomerUpdateResponse::Data::Type
      # }
      # ```
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
