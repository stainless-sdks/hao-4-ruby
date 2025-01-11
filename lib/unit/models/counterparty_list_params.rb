# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::CounterpartyListParams::Filter]
      optional :filter, -> { Unit::Models::CounterpartyListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::CounterpartyListParams::Page]
      optional :page, -> { Unit::Models::CounterpartyListParams::Page }

      # @!attribute sort
      #
      #   @return [String]
      optional :sort, String

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
      #
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
        # @!attribute account_number
        #
        #   @return [String]
        optional :account_number, String, api_name: :accountNumber

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute permissions
        #
        #   @return [Array<Symbol, Unit::Models::CounterpartyListParams::Filter::Permission>]
        optional :permissions,
                 -> { Unit::ArrayOf[enum: Unit::Models::CounterpartyListParams::Filter::Permission] }

        # @!attribute routing_number
        #
        #   @return [String]
        optional :routing_number, String, api_name: :routingNumber

        # @!attribute tags
        #
        #   @return [Hash{Symbol => String}]
        optional :tags, Unit::HashOf[String]

        # @!parse
        #   # @param account_number [String]
        #   # @param customer_id [String]
        #   # @param permissions [Array<String>]
        #   # @param routing_number [String]
        #   # @param tags [Hash{Symbol => String}]
        #   #
        #   def initialize(account_number: nil, customer_id: nil, permissions: nil, routing_number: nil, tags: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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
