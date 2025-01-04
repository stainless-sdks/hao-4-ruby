# frozen_string_literal: true

module Unit
  module Models
    class CustomerListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::CustomerListParams::Filter]
      optional :filter, -> { Unit::Models::CustomerListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CustomerListParams::Page]
      optional :page, -> { Unit::Models::CustomerListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::CustomerListParams::Filter]
      #   #
      #   # @param page [Unit::Models::CustomerListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute email
        #
        #   @return [String]
        optional :email, String

        # @!attribute query
        #
        #   @return [String]
        optional :query, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::CustomerListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::CustomerListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param email [String]
        #   # @param query [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol => String}]
        #   #
        #   def initialize(email: nil, query: nil, status: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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

      class Page < Unit::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        optional :offset, Integer

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
