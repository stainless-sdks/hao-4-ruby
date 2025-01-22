# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # customer_update_response => {
    #   data: Unit::Models::CustomerUpdateResponse::Data
    # }
    # ```
    class CustomerUpdateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CustomerUpdateResponse::Data, nil]
      optional :data, -> { Unit::Models::CustomerUpdateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::CustomerUpdateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CustomerUpdateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::CustomerUpdateResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::CustomerUpdateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CustomerUpdateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CustomerUpdateResponse::Data::Type]
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
