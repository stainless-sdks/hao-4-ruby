# frozen_string_literal: true

module Unit
  module Models
    class RepaymentRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RepaymentRetrieveResponse::Data]
      optional :data, -> { Unit::Models::RepaymentRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RepaymentRetrieveResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RepaymentRetrieveResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RepaymentRetrieveResponse::Data::Type }

        # @!parse
        #   # @param id [String, nil]
        #   # @param type [String, nil]
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
    end
  end
end
