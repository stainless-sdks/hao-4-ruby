# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # transaction_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::Accounts::Transaction] === _1 },
    #   included: -> { Unit::ArrayOf[Unit::Models::TransactionListResponse::Included] === _1 },
    #   meta: Unit::Models::TransactionListResponse::Meta
    # }
    # ```
    class TransactionListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::Accounts::Transaction>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Accounts::Transaction] }

      # @!parse
      #   # @return [Array<Unit::Models::Accounts::Transaction>]
      #   attr_writer :data

      # @!attribute [r] included
      #
      #   @return [Array<Unit::Models::TransactionListResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::TransactionListResponse::Included] }

      # @!parse
      #   # @return [Array<Unit::Models::TransactionListResponse::Included>]
      #   attr_writer :included

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::TransactionListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::TransactionListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::TransactionListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::Accounts::Transaction>]
      #   # @param included [Array<Unit::Models::TransactionListResponse::Included>]
      #   # @param meta [Unit::Models::TransactionListResponse::Meta]
      #   #
      #   def initialize(data: nil, included: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Unknown,
      #   relationships: Unit::Unknown,
      #   type: String
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] attributes
        #
        #   @return [Object, nil]
        optional :attributes, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Object, nil]
        optional :relationships, Unit::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :relationships

        # @!attribute [r] type
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Object]
        #   # @param relationships [Object]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, attributes: nil, relationships: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::TransactionListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::TransactionListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::TransactionListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::TransactionListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::TransactionListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
          # @!attribute [r] limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :offset

          # @!attribute [r] total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :total

          # @!parse
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   # @param total [Integer]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
