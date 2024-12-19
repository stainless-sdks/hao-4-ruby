# frozen_string_literal: true

module Unit
  module Models
    module Accounts
      module Relationships
        class CustomerAddParams < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Array<Unit::Models::Accounts::Relationships::CustomerAddParams::Data>]
          required :data, Unit::ArrayOf[-> { Unit::Models::Accounts::Relationships::CustomerAddParams::Data }]

          # @!parse
          #   # @param data [Array<Unit::Models::Accounts::Relationships::CustomerAddParams::Data>]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Data < Unit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            optional :id, String

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Accounts::Relationships::CustomerAddParams::Data::Type]
            optional :type, enum: -> { Unit::Models::Accounts::Relationships::CustomerAddParams::Data::Type }

            # @!parse
            #   # @param id [String, nil]
            #   # @param type [String, nil]
            #   #
            #   def initialize(id: nil, type: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :customer
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              CUSTOMER = :customer
            end
          end
        end
      end
    end
  end
end
