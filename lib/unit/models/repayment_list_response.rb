# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # repayment_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::RepaymentListResponse::Data] === _1 },
    #   meta: Unit::Models::RepaymentListResponse::Meta
    # }
    # ```
    class RepaymentListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::RepaymentListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::RepaymentListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::RepaymentListResponse::Data>]
      #   attr_writer :data

      # @!attribute [r] meta
      #
      #   @return [Unit::Models::RepaymentListResponse::Meta, nil]
      optional :meta, -> { Unit::Models::RepaymentListResponse::Meta }

      # @!parse
      #   # @return [Unit::Models::RepaymentListResponse::Meta]
      #   attr_writer :meta

      # @!parse
      #   # @param data [Array<Unit::Models::RepaymentListResponse::Data>]
      #   # @param meta [Unit::Models::RepaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::RepaymentListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] id
        #
        #   @return [String, nil]
        optional :id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :id

        # @!attribute [r] type
        #
        #   @return [Symbol, Unit::Models::RepaymentListResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RepaymentListResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RepaymentListResponse::Data::Type]
        #   attr_writer :type

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :achRepayment
        #   # ...
        # in :bookRepayment
        #   # ...
        # in :capitalPartnerAchRepayment
        #   # ...
        # in :capitalPartnerBookRepayment
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACH_REPAYMENT = :achRepayment
          BOOK_REPAYMENT = :bookRepayment
          CAPITAL_PARTNER_ACH_REPAYMENT = :capitalPartnerAchRepayment
          CAPITAL_PARTNER_BOOK_REPAYMENT = :capitalPartnerBookRepayment

          finalize!
        end
      end

      # @example
      # ```ruby
      # meta => {
      #   pagination: Unit::Models::RepaymentListResponse::Meta::Pagination
      # }
      # ```
      class Meta < Unit::BaseModel
        # @!attribute [r] pagination
        #
        #   @return [Unit::Models::RepaymentListResponse::Meta::Pagination, nil]
        optional :pagination, -> { Unit::Models::RepaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @return [Unit::Models::RepaymentListResponse::Meta::Pagination]
        #   attr_writer :pagination

        # @!parse
        #   # @param pagination [Unit::Models::RepaymentListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # pagination => {
        #   limit: Integer,
        #   offset: Integer,
        #   total: Integer
        # }
        # ```
        class Pagination < Unit::BaseModel
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

          # @!attribute [r] total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :total

          # @!parse
          #   # @param limit [Integer]
          #   # @param offset [Integer]
          #   # @param total [Integer]
          #   #
          #   def initialize(limit: nil, offset: nil, total: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end
      end
    end
  end
end
