# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::ApplicationFormListParams::Filter]
      optional :filter, -> { Unit::Models::ApplicationFormListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::ApplicationFormListParams::Page]
      optional :page, -> { Unit::Models::ApplicationFormListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

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
        #   @return [Array<Symbol, Unit::Models::ApplicationFormListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::ApplicationFormListParams::Filter::Status] }

        # @!attribute tags
        #
        #   @return [Hash{Symbol=>String}]
        optional :tags, Unit::HashOf[String]

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
