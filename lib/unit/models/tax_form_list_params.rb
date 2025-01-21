# frozen_string_literal: true

module Unit
  module Models
    class TaxFormListParams < Unit::BaseModel
      # @!attribute [r] filter
      #
      #   @return [Unit::Models::TaxFormListParams::Filter, nil]
      optional :filter, -> { Unit::Models::TaxFormListParams::Filter }

      # @!parse
      #   # @return [Unit::Models::TaxFormListParams::Filter]
      #   attr_writer :filter

      # @!attribute [r] page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::TaxFormListParams::Page, nil]
      optional :page, -> { Unit::Models::TaxFormListParams::Page }

      # @!parse
      #   # @return [Unit::Models::TaxFormListParams::Page]
      #   attr_writer :page

      # @!parse
      #   # @param filter [Unit::Models::TaxFormListParams::Filter]
      #   #
      #   # @param page [Unit::Models::TaxFormListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   tax_form_types: -> { Unit::ArrayOf[String] === _1 },
      #   tax_year: -> { Unit::ArrayOf[String] === _1 }
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

        # @!attribute [r] customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, api_name: :customerId

        # @!parse
        #   # @return [String]
        #   attr_writer :customer_id

        # @!attribute [r] tax_form_types
        #
        #   @return [Array<String>]
        optional :tax_form_types, Unit::ArrayOf[String], api_name: :taxFormTypes

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :tax_form_types

        # @!attribute [r] tax_year
        #
        #   @return [Array<String>]
        optional :tax_year, Unit::ArrayOf[String], api_name: :taxYear

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :tax_year

        # @!parse
        #   # @param account_id [String]
        #   # @param customer_id [String]
        #   # @param tax_form_types [Array<String>]
        #   # @param tax_year [Array<String>]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, tax_form_types: nil, tax_year: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
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
