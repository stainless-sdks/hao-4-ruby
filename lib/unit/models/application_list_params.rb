# frozen_string_literal: true

module Unit
  module Models
    class ApplicationListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::ApplicationListParams::Filter, nil]
      optional :filter, -> { Unit::Models::ApplicationListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::ApplicationListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::ApplicationListParams::Page, nil]
      optional :page, -> { Unit::Models::ApplicationListParams::Page }

      # @!parse
      #   # @return [Unit::Models::ApplicationListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::ApplicationListParams::Filter]
      #   # @param page [Unit::Models::ApplicationListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   email: String,
      #   query: String,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::ApplicationListParams::Filter::Status] === _1 },
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
        #   @return [Array<Symbol, Unit::Models::ApplicationListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::ApplicationListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::ApplicationListParams::Filter::Status>]
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
        # in :AwaitingDocuments
        #   # ...
        # in :PendingReview
        #   # ...
        # in :Pending
        #   # ...
        # in :Approved
        #   # ...
        # in :Denied
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Status < Unit::Enum
          AWAITING_DOCUMENTS = :AwaitingDocuments
          PENDING_REVIEW = :PendingReview
          PENDING = :Pending
          APPROVED = :Approved
          DENIED = :Denied
          CANCELED = :Canceled

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
