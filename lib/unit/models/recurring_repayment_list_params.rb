# frozen_string_literal: true

module Unit
  module Models
    class RecurringRepaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::RecurringRepaymentListParams::Filter]
      optional :filter, -> { Unit::Models::RecurringRepaymentListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RecurringRepaymentListParams::Page]
      optional :page, -> { Unit::Models::RecurringRepaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [Symbol, Unit::Models::RecurringRepaymentListParams::Sort]
      optional :sort, enum: -> { Unit::Models::RecurringRepaymentListParams::Sort }

      # @!parse
      #   # @param filter [Unit::Models::RecurringRepaymentListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::RecurringRepaymentListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute credit_account_id
        #
        #   @return [String]
        optional :credit_account_id, String, api_name: :creditAccountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_start_time
        #
        #   @return [Date]
        optional :from_start_time, Date, api_name: :fromStartTime

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::RecurringRepaymentListParams::Filter::Status>]
        optional :status,
                 Unit::ArrayOf[enum: -> {
                   Unit::Models::RecurringRepaymentListParams::Filter::Status
                 }]

        # @!attribute to_start_time
        #
        #   @return [Date]
        optional :to_start_time, Date, api_name: :toStartTime

        # @!parse
        #   # @param credit_account_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param from_start_time [String, nil]
        #   # @param status [Array<String>, nil]
        #   # @param to_start_time [String, nil]
        #   #
        #   def initialize(credit_account_id: nil, customer_id: nil, from_start_time: nil, status: nil, to_start_time: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        #   # @param limit [Integer, nil]
        #   # @param offset [Integer, nil]
        #   #
        #   def initialize(limit: nil, offset: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # case enum
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
