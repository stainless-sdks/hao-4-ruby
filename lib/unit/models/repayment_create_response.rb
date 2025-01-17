# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # repayment_create_response => {
    #   data: Unit::Models::RepaymentCreateResponse::Data
    # }
    # ```
    class RepaymentCreateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RepaymentCreateResponse::Data]
      optional :data, -> { Unit::Models::RepaymentCreateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RepaymentCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RepaymentCreateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        optional :id, String

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::RepaymentCreateResponse::Data::Type]
        optional :type, enum: -> { Unit::Models::RepaymentCreateResponse::Data::Type }

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
    end
  end
end
