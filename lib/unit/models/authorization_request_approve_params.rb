# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestApproveParams < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::AuthorizationRequestApproveParams::Data, nil]
      optional :data, -> { Unit::Models::AuthorizationRequestApproveParams::Data }

      # @!parse
      #   # @return [Unit::Models::AuthorizationRequestApproveParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::AuthorizationRequestApproveParams::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::AuthorizationRequestApproveParams::Data::Attributes,
      #   type: enum: Unit::Models::AuthorizationRequestApproveParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::AuthorizationRequestApproveParams::Data::Attributes]
        required :attributes, -> { Unit::Models::AuthorizationRequestApproveParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AuthorizationRequestApproveParams::Data::Type]
        required :type, enum: -> { Unit::Models::AuthorizationRequestApproveParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::AuthorizationRequestApproveParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   funding_account: String,
        #   tags: -> { Unit::HashOf[String] === _1 }
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] amount
          #
          #   @return [Integer, nil]
          optional :amount, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :amount

          # @!attribute [r] funding_account
          #
          #   @return [String, nil]
          optional :funding_account, String, api_name: :fundingAccount

          # @!parse
          #   # @return [String]
          #   attr_writer :funding_account

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param amount [Integer]
          #   # @param funding_account [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(amount: nil, funding_account: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # case type
        # in :approveAuthorizationRequest
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          APPROVE_AUTHORIZATION_REQUEST = :approveAuthorizationRequest

          finalize!
        end
      end
    end
  end
end
