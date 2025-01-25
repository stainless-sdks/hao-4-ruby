# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentListParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] filter
      #
      #   @return [Unit::Models::RecurringRepaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::RecurringRepaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::RecurringRepaymentListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RecurringRepaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::RecurringRepaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::RecurringRepaymentListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [Symbol, Unit::Models::RecurringRepaymentListParams::Sort, nil]
      optional :sort, enum: -> { Unit::Models::RecurringRepaymentListParams::Sort }

      # @!parse
      #   # @return [Symbol, Unit::Models::RecurringRepaymentListParams::Sort]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::RecurringRepaymentListParams::Filter]
      #   # @param page [Unit::Models::RecurringRepaymentListParams::Page]
      #   # @param sort [String]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   credit_account_id: String,
      #   customer_id: String,
      #   from_start_time: Date,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::RecurringRepaymentListParams::Filter::Status] === _1 },
      #   to_start_time: Date
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] credit_account_id
        #
        #   @return [String, nil]
        optional :credit_account_id, String, api_name: :creditAccountId

        # @!parse
        #   # @return [String]
        #   attr_writer :credit_account_id

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] from_start_time
        #
        #   @return [Date, nil]
        optional :from_start_time, Date, api_name: :fromStartTime

        # @!parse
        #   # @return [Date]
        #   attr_writer :from_start_time

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::RecurringRepaymentListParams::Filter::Status>]
        optional :status,
                 -> {
                   Unit::ArrayOf[enum: Unit::Models::RecurringRepaymentListParams::Filter::Status]
                 }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::RecurringRepaymentListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] to_start_time
        #
        #   @return [Date, nil]
        optional :to_start_time, Date, api_name: :toStartTime

        # @!parse
        #   # @return [Date]
        #   attr_writer :to_start_time

        # @!parse
        #   # @param credit_account_id [String]
        #   # @param customer_id [String]
        #   # @param from_start_time [String]
        #   # @param status [Array<String>]
        #   # @param to_start_time [String]
        #   #
        #   def initialize(credit_account_id: nil, customer_id: nil, from_start_time: nil, status: nil, to_start_time: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
        # in :Active
        #   # ...
        # in :Disabled
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          ACTIVE = :Active
          DISABLED = :Disabled

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

      # @example
      # ```ruby
      # case sort
      # in :createdAt
      #   # ...
      # in :"-createdAt"
      #   # ...
      # end
      # ```
      class Sort < Unit::Enum
        CREATED_AT = :createdAt
        CREATED_AT = :"-createdAt"

        finalize!
      end
    end
  end
end
