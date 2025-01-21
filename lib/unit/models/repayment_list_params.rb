# frozen_string_literal: true

module Unit
  module Models
    class RepaymentListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::RepaymentListParams::Filter, nil]
      optional :filter, -> { Unit::Models::RepaymentListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::RepaymentListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RepaymentListParams::Page, nil]
      optional :page, -> { Unit::Models::RepaymentListParams::Page }

      # @!parse
      #   # @return [Unit::Models::RepaymentListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::RepaymentListParams::Filter]
      #   #
      #   # @param page [Unit::Models::RepaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   credit_account_id: String,
      #   customer_id: String,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Status] === _1 },
      #   type: -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Type] === _1 }
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] account_id
        #
        #   @return [String, nil]
        optional :account_id, String, api_name: :accountId

        # @!parse
        #   # @return [String]
        #   attr_writer :account_id

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

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] type
        #
        #   @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Type>]
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Type] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Type>]
        #   attr_writer :type

        # @!parse
        #   # @param account_id [String]
        #   # @param credit_account_id [String]
        #   # @param customer_id [String]
        #   # @param status [Array<String>]
        #   # @param type [Array<String>]
        #   #
        #   def initialize(account_id: nil, credit_account_id: nil, customer_id: nil, status: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
        # in :Pending
        #   # ...
        # in :PendingReview
        #   # ...
        # in :Returned
        #   # ...
        # in :Sent
        #   # ...
        # in :Rejected
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          PENDING = :Pending
          PENDING_REVIEW = :PendingReview
          RETURNED = :Returned
          SENT = :Sent
          REJECTED = :Rejected

          finalize!
        end

        # @example
        # ```ruby
        # case type
        # in :AchRepayment
        #   # ...
        # in :BookRepayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_REPAYMENT = :AchRepayment
          BOOK_REPAYMENT = :BookRepayment

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
