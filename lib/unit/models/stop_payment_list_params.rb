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
      #   # @param filter [Unit::Models::StopPaymentListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::StopPaymentListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   # @param sort [String, nil]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::StopPaymentListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
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
        #   # @param account_id [String, nil]
        #   # @param check_number [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param from_amount [Integer, nil]
        #   # @param since [String, nil]
        #   # @param status [Array<String>, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   # @param to_amount [Integer, nil]
        #   # @param until_ [String, nil]
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
    end
  end
end
