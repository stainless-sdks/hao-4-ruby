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
      # @!attribute [r] data
      #
      #   @return [Unit::Models::RepaymentCreateResponse::Data, nil]
      optional :data, -> { Unit::Models::RepaymentCreateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::RepaymentCreateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::RepaymentCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   type: Unit::Models::RepaymentCreateResponse::Data::Type
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
        #   @return [Symbol, Unit::Models::RepaymentCreateResponse::Data::Type, nil]
        optional :type, enum: -> { Unit::Models::RepaymentCreateResponse::Data::Type }

        # @!parse
        #   # @return [Symbol, Unit::Models::RepaymentCreateResponse::Data::Type]
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
    end
  end
end
