# frozen_string_literal: true

module Unit
  module Models
    class StopPaymentListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::StopPaymentListParams::Filter]
      optional :filter, -> { Unit::Models::StopPaymentListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::StopPaymentListParams::Page]
      optional :page, -> { Unit::Models::StopPaymentListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

      # @!parse
      #   # @param filter [Unit::Models::StopPaymentListParams::Filter]
      #   #
      #   # @param page [Unit::Models::StopPaymentListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   check_number: String,
      #   customer_id: String,
      #   from_amount: Integer,
      #   since: String,
      #   **_
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute check_number
        #
        #   @return [String]
        optional :check_number, String, api_name: :checkNumber

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_amount
        #
        #   @return [Integer]
        optional :from_amount, Integer, api_name: :fromAmount

        # @!attribute since
        #
        #   @return [String]
        optional :since, String

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::StopPaymentListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::StopPaymentListParams::Filter::Status] }

        # @!attribute tags
        #
        #   @return [Hash{Symbol=>String}]
        optional :tags, Unit::HashOf[String]

        # @!attribute to_amount
        #
        #   @return [Integer]
        optional :to_amount, Integer, api_name: :toAmount

        # @!attribute until_
        #
        #   @return [String]
        optional :until_, String, api_name: :until

        # @!parse
        #   # @param account_id [String]
        #   # @param check_number [String]
        #   # @param customer_id [String]
        #   # @param from_amount [Integer]
        #   # @param since [String]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   # @param to_amount [Integer]
        #   # @param until_ [String]
        #   #
        #   def initialize(
        #     account_id: nil,
        #     check_number: nil,
        #     customer_id: nil,
        #     from_amount: nil,
        #     since: nil,
        #     status: nil,
        #     tags: nil,
        #     to_amount: nil,
        #     until_: nil,
        #     **
        #   )
        #     super
        #   end

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
