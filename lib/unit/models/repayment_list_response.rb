# frozen_string_literal: true

module Unit
  module Models
    class RepaymentListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::RepaymentListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::RepaymentListResponse::Data }]

      # @!attribute meta
      #
      #   @return [Unit::Models::RepaymentListResponse::Meta]
      optional :meta, -> { Unit::Models::RepaymentListResponse::Meta }

      # @!parse
      #   # @param data [Array<Unit::Models::RepaymentListResponse::Data>]
      #   # @param meta [Unit::Models::RepaymentListResponse::Meta]
      #   #
      #   def initialize(data: nil, meta: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RepaymentListResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RepaymentListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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

      class Meta < Unit::BaseModel
        # @!attribute pagination
        #
        #   @return [Unit::Models::RepaymentListResponse::Meta::Pagination]
        optional :pagination, -> { Unit::Models::RepaymentListResponse::Meta::Pagination }

        # @!parse
        #   # @param pagination [Unit::Models::RepaymentListResponse::Meta::Pagination]
        #   #
        #   def initialize(pagination: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Pagination < Unit::BaseModel
          # @!attribute limit
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          optional :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          optional :total, Integer

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
