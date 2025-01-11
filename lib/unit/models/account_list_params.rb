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
      #   # @param filter [Unit::Models::AccountListParams::Filter]
      #   #
      #   # @param include [String]
      #   #
      #   # @param page [Unit::Models::AccountListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, include: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
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
        optional :status, -> { Unit::ArrayOf[enum: Unit::Models::AccountListParams::Filter::Status] }

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
        optional :type, -> { Unit::ArrayOf[enum: Unit::Models::AccountListParams::Filter::Type] }

        # @!parse
        #   # @param customer_id [String]
        #   # @param from_balance [Float]
        #   # @param status [Array<String>]
        #   # @param tags [Hash{Symbol => String}]
        #   # @param to_balance [Float]
        #   # @param type [Array<String>]
        #   #
        #   def initialize(customer_id: nil, from_balance: nil, status: nil, tags: nil, to_balance: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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
        #
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
