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
      #   # @param filter [Unit::Models::TaxFormListParams::Filter, nil]
      #   #
      #   # @param page [Unit::Models::TaxFormListParams::Page, nil] Parameters for paginated list requests
      #   #
      #   def initialize(filter: nil, page: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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
        #   # @param account_id [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param tax_form_types [Array<String>, nil]
        #   # @param tax_year [Array<String>, nil]
        #   #
        #   def initialize(account_id: nil, customer_id: nil, tax_form_types: nil, tax_year: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
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
