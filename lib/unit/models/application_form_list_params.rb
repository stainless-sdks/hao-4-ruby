# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::ApplicationFormListParams::Filter, nil]
      optional :filter, -> { Unit::Models::ApplicationFormListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::ApplicationFormListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::ApplicationFormListParams::Page, nil]
      optional :page, -> { Unit::Models::ApplicationFormListParams::Page }

      # @!parse
      #   # @return [Unit::Models::ApplicationFormListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::ApplicationFormListParams::Filter]
      #   #
      #   # @param page [Unit::Models::ApplicationFormListParams::Page] Parameters for paginated list requests
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
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::ApplicationFormListParams::Filter::Status] === _1 },
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
        #   @return [Array<Symbol, Unit::Models::ApplicationFormListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::ApplicationFormListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::ApplicationFormListParams::Filter::Status>]
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
        # in :Pending
        #   # ...
        # in :Approved
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          PENDING = :Pending
          APPROVED = :Approved

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
