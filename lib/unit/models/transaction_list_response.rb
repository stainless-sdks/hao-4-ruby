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
      # @!attribute data
      #
      #   @return [Array<Unit::Models::Accounts::Transaction>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::Accounts::Transaction] }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::TransactionListResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::TransactionListResponse::Included] }

      # @!attribute meta
      #
      #   @return [Unit::Models::TransactionListResponse::Meta]
      optional :meta, -> { Unit::Models::TransactionListResponse::Meta }

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
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute attributes
        #
        #   @return [Object]
        optional :attributes, Unit::Unknown

        # @!attribute relationships
        #
        #   @return [Object]
        optional :relationships, Unit::Unknown

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

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
        # @!attribute pagination
        #
        #   @return [Unit::Models::TransactionListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::TransactionListResponse::Meta::Pagination }

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
          # @!attribute limit
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          optional :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          optional :total, Integer

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
