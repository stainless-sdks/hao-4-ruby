# frozen_string_literal: true

module Unit
  module Models
    class ApplicationListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::ApplicationListParams::Filter]
      optional :filter, -> { Unit::Models::ApplicationListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::ApplicationListParams::Page]
      optional :page, -> { Unit::Models::ApplicationListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::ApplicationListParams::Filter]
      #   #
      #   # @param page [Unit::Models::ApplicationListParams::Page] Parameters for paginated list requests
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
        #   @return [Array<Symbol, Unit::Models::ApplicationListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::ApplicationListParams::Filter::Status }]

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
