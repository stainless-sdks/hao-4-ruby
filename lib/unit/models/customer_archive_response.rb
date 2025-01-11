# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # customer_archive_response => {
    #   data: Unit::Models::CustomerArchiveResponse::Data
    # }
    # ```
    class CustomerArchiveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CustomerArchiveResponse::Data]
      optional :data, -> { Unit::Models::CustomerArchiveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::CustomerArchiveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::CustomerArchiveResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CustomerArchiveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::CustomerArchiveResponse::Data::Type }

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
