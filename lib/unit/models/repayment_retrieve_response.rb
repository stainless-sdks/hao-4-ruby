# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # repayment_retrieve_response => {
    #   data: Unit::Models::RepaymentRetrieveResponse::Data
    # }
    # ```
    class RepaymentRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::RepaymentRetrieveResponse::Data]
      optional :data, -> { Unit::Models::RepaymentRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::RepaymentRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   type: enum: Unit::Models::RepaymentRetrieveResponse::Data::Type
      # }
      # ```
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
        #   # @param id [String]
        #   # @param type [String]
        #   #
        #   def initialize(id: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
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
