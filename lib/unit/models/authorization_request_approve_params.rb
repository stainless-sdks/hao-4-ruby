# frozen_string_literal: true

module Unit
  module Models
    class AuthorizationRequestApproveParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::AuthorizationRequestApproveParams::Data]
      optional :data, -> { Unit::Models::AuthorizationRequestApproveParams::Data }

      # @!parse
      #   # @param data [Unit::Models::AuthorizationRequestApproveParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

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

        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          optional :amount, Integer

          # @!attribute funding_account
          #
          #   @return [String]
          optional :funding_account, String, api_name: :fundingAccount

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param amount [Integer, nil]
          #   # @param funding_account [String, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   #
          #   def initialize(amount: nil, funding_account: nil, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :approveAuthorizationRequest
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          APPROVE_AUTHORIZATION_REQUEST = :approveAuthorizationRequest
        end
      end
    end
  end
end
