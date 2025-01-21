# frozen_string_literal: true

module Unit
  module Models
    class CustomerListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::CustomerListParams::Filter, nil]
      optional :filter, -> { Unit::Models::CustomerListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::CustomerListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CustomerListParams::Page, nil]
      optional :page, -> { Unit::Models::CustomerListParams::Page }

      # @!parse
      #   # @return [Unit::Models::CustomerListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::CustomerListParams::Filter]
      #   #
      #   # @param page [Unit::Models::CustomerListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   email: String,
      #   query: String,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::CustomerListParams::Filter::Status] === _1 },
      #   tags: -> { Unit::HashOf[String] === _1 }
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] email
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] query
        #
        #   @return [String, nil]
        optional :query, String

        # @!parse
        #   # @return [String]
        #   attr_writer :query

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::CustomerListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::CustomerListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::CustomerListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!parse
        #   # @param email [String]
        #   # @param query [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   #
        #   def initialize(email: nil, query: nil, status: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
        # in :Active
        #   # ...
        # in :Archived
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          ACTIVE = :Active
          ARCHIVED = :Archived

          finalize!
        end
      end

      # @example
      # ```ruby
      # page => {
      #   limit: Integer,
      #   offset: Integer
      # }
      # ```
      class Page < Unit::BaseModel
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

        # @!parse
        #   # Parameters for paginated list requests
        #   #
        #   # @param limit [Integer]
        #   # @param offset [Integer]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
