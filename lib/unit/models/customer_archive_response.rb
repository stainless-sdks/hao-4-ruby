# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # customer_archive_response => {
    #   data: Unit::Models::CustomerArchiveResponse::Data
    # }
    # ```
    class CustomerArchiveResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::CustomerArchiveResponse::Data, nil]
      optional :data, -> { Unit::Models::CustomerArchiveResponse::Data }

      # @!parse
      #   # @return [Unit::Models::CustomerArchiveResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::CustomerArchiveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::CustomerArchiveResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::CustomerArchiveResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::CustomerArchiveResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::CustomerArchiveResponse::Data::Type]
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
