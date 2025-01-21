# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::CounterpartyListParams::Filter, nil]
      optional :filter, -> { Unit::Models::CounterpartyListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::CounterpartyListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CounterpartyListParams::Page, nil]
      optional :page, -> { Unit::Models::CounterpartyListParams::Page }

      # @!parse
      #   # @return [Unit::Models::CounterpartyListParams::Page]
      #   attr_writer :page

      # @!attribute [r] sort
      #
      #   @return [String, nil]
      optional :sort, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sort

      # @!parse
      #   # @param filter [Unit::Models::CounterpartyListParams::Filter]
      #   #
      #   # @param page [Unit::Models::CounterpartyListParams::Page] Parameters for paginated list requests
      #   #
      #   # @param sort [String]
      #   #
      #   def initialize(filter: nil, page: nil, sort: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_number: String,
      #   customer_id: String,
      #   permissions: -> { Unit::ArrayOf[enum: Unit::Models::CounterpartyListParams::Filter::Permission] === _1 },
      #   routing_number: String,
      #   tags: -> { Unit::HashOf[String] === _1 }
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute [r] account_number
        #
        #   @return [String, nil]
        optional :account_number, String, api_name: :accountNumber

        # @!parse
        #   # @return [String]
        #   attr_writer :account_number

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] permissions
        #
        #   @return [Array<Symbol, Unit::Models::CounterpartyListParams::Filter::Permission>]
        optional :permissions,
                 -> { Unit::ArrayOf[enum: Unit::Models::CounterpartyListParams::Filter::Permission] }

        # @!parse
        #   # @return [Array<Symbol, Unit::Models::CounterpartyListParams::Filter::Permission>]
        #   attr_writer :permissions

        # @!attribute [r] routing_number
        #
        #   @return [String, nil]
        optional :routing_number, String, api_name: :routingNumber

        # @!parse
        #   # @return [String]
        #   attr_writer :routing_number

        # @!attribute [r] tags
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :tags

        # @!parse
        #   # @param account_number [String]
        #   # @param customer_id [String]
        #   # @param permissions [Array<String>]
        #   # @param routing_number [String]
        #   # @param tags [Hash{Symbol=>String}]
        #   #
        #   def initialize(account_number: nil, customer_id: nil, permissions: nil, routing_number: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case permission
        # in :CreditOnly
        #   # ...
        # in :DebitOnly
        #   # ...
        # in :CreditAndDebit
        #   # ...
        # end
        # ```
        class Permission < Unit::Enum
          CREDIT_ONLY = :CreditOnly
          DEBIT_ONLY = :DebitOnly
          CREDIT_AND_DEBIT = :CreditAndDebit

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
