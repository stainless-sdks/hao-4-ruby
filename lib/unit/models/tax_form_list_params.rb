# frozen_string_literal: true

module Unit
  module Models
    class TaxFormListParams < Unit::BaseModel
      # @!attribute filter
      #
      #   @return [Unit::Models::TaxFormListParams::Filter]
      optional :filter, -> { Unit::Models::TaxFormListParams::Filter }

      # @!attribute page
      #   Parameters for paginated list requests
      #
      #   @return [Unit::Models::TaxFormListParams::Page]
      optional :page, -> { Unit::Models::TaxFormListParams::Page }

      # @!parse
      #   # @param filter [Unit::Models::TaxFormListParams::Filter]
      #   #
      #   # @param page [Unit::Models::TaxFormListParams::Page] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # filter => {
      #   account_id: String,
      #   customer_id: String,
      #   tax_form_types: -> { Unit::ArrayOf[String] === _1 },
      #   tax_year: -> { Unit::ArrayOf[String] === _1 }
      # }
      # ```
      class Filter < Unit::BaseModel
        # @!attribute account_id
        #
        #   @return [String]
        optional :account_id, String, api_name: :accountId

        # @!attribute customer_id
        #
        #   @return [String]
        optional :customer_id, String, api_name: :customerId

        # @!attribute tax_form_types
        #
        #   @return [Array<String>]
        optional :tax_form_types, Unit::ArrayOf[String], api_name: :taxFormTypes

        # @!attribute tax_year
        #
        #   @return [Array<String>]
        optional :tax_year, Unit::ArrayOf[String], api_name: :taxYear

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
