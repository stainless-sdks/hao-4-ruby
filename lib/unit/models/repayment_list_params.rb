# frozen_string_literal: true

module Unit
  module Models
    class RepaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::RepaymentListParams::Filter]
      optional :filter, -> { Unit::Models::RepaymentListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::RepaymentListParams::Page]
      optional :page, -> { Unit::Models::RepaymentListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::RepaymentListParams::Filter]
      #   #
      #   # @param page [Unit::Models::RepaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
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
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute credit_account_id
        #
        #   @return [String]
        optional :credit_account_id, String, api_name: :creditAccountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Status] }

        # @!attribute type
        #
        #   @return [Array<Symbol, Unit::Models::RepaymentListParams::Filter::Type>]
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::RepaymentListParams::Filter::Type] }

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
        #
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
        #
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
      #
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
