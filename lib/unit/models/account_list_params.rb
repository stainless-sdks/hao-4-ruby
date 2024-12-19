# frozen_string_literal: true

module Unit
  module Models
    class AccountListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::AccountListParams::Filter]
      optional :filter, -> { Unit::Models::AccountListParams::Filter }

      # @!attribute include
      #
      #   @return [String]
      optional :include, String

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AccountListParams::Page]
      optional :page, -> { Unit::Models::AccountListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::AccountListParams::Filter, nil]
      #   #
      #   # @param include [String, nil]
      #   #
      #   # @param page [Unit::Models::AccountListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Filter < Unit::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute from_balance
        #
        #   @return [Float]
        optional :from_balance, Float, api_name: :fromBalance

        # @!attribute status
        #
        #   @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Status>]
        optional :status, Unit::ArrayOf[enum: -> { Unit::Models::AccountListParams::Filter::Status }]

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!attribute to_balance
        #
        #   @return [Float]
        optional :to_balance, Float, api_name: :toBalance

        # @!attribute type
        #
        #   @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Type>]
        optional :type, Unit::ArrayOf[enum: -> { Unit::Models::AccountListParams::Filter::Type }]

        # @!parse
        #   # @param customer_id [String, nil]
        #   # @param from_balance [Float, nil]
        #   # @param status [Array<String>, nil]
        #   # @param tags [Hash{Symbol => String}, nil]
        #   # @param to_balance [Float, nil]
        #   # @param type [Array<String>, nil]
        #   #
        #   def initialize(customer_id: nil, from_balance: nil, status: nil, tags: nil, to_balance: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :Open
        #   # ...
        # in :Frozen
        #   # ...
        # in :Closed
        #   # ...
        # end
        # ```
        class Status < Unit::Enum
          OPEN = :Open
          FROZEN = :Frozen
          CLOSED = :Closed
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :deposit
        #   # ...
        # in :credit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          DEPOSIT = :deposit
          CREDIT = :credit
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
