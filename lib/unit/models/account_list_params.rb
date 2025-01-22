# frozen_string_literal: true

module Unit
  module Models
    class AccountListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::AccountListParams::Filter, nil]
      optional :filter, -> { Unit::Models::AccountListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::AccountListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] include
      #
      #   @return [String, nil]
      optional :include, String

      # @!parse
      #   # @return [String]
      #   attr_writer :include

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::AccountListParams::Page, nil]
      optional :page, -> { Unit::Models::AccountListParams::Page }

      # @!parse
      #   # @return [Unit::Models::AccountListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::AccountListParams::Filter]
      #   # @param include [String]
      #   # @param page [Unit::Models::AccountListParams::Page]
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   customer_id: String,
      #   from_balance: Float,
      #   status: -> { Unit::ArrayOf[enum: Unit::Models::AccountListParams::Filter::Status] === _1 },
      #   tags: -> { Unit::HashOf[String] === _1 },
      #   to_balance: Float
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] from_balance
        #
        #   @return [Float, nil]
        optional :from_balance, Float, api_name: :fromBalance

        # @!parse
        #   # @return [Float]
        #   attr_writer :from_balance

        # @!attribute [r] status
        #
        #   @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Status>]
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::AccountListParams::Filter::Status] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Status>]
        #   attr_writer :status

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!attribute [r] to_balance
        #
        #   @return [Float, nil]
        optional :to_balance, Float, api_name: :toBalance

        # @!parse
        #   # @return [Float]
        #   attr_writer :to_balance

        # @!attribute [r] type
        #
        #   @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Type>]
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::AccountListParams::Filter::Type] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::AccountListParams::Filter::Type>]
        #   attr_writer :type

        # @!parse
        #   # @param customer_id [String]
        #   # @param from_balance [Float]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol=>String}]
        #   # @param to_balance [Float]
        #   # @param type [Array<String>]
        #   #
        #   def initialize(customer_id: nil, from_balance: nil, status: nil, tags: nil, to_balance: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case status
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

          finalize!
        end

        # @example
        # ```ruby
        # case type
        # in :deposit
        #   # ...
        # in :credit
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          DEPOSIT = :deposit
          CREDIT = :credit

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
