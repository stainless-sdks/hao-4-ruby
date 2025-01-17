# frozen_string_literal: true

module Unit
  module Models
    module Customers
      module Token
        # @example
        # ```ruby
        # verification_create_response => {
        #   data: Unit::Models::Customers::Token::VerificationCreateResponse::Data
        # }
        # ```
        class VerificationCreateResponse < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::Customers::Token::VerificationCreateResponse::Data]
          optional :data, -> { Unit::Models::Customers::Token::VerificationCreateResponse::Data }

          # @!parse
          #   # @param data [Unit::Models::Customers::Token::VerificationCreateResponse::Data]
          #   #
          #   def initialize(data: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # data => {
          #   attributes: Unit::Models::Customers::Token::VerificationCreateResponse::Data::Attributes,
          #   type: enum: Unit::Models::Customers::Token::VerificationCreateResponse::Data::Type
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute attributes
            #
            #   @return [Unit::Models::Customers::Token::VerificationCreateResponse::Data::Attributes]
            required :attributes,
                     -> {
                       Unit::Models::Customers::Token::VerificationCreateResponse::Data::Attributes
                     }

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Customers::Token::VerificationCreateResponse::Data::Type]
            required :type,
                     enum: -> {
                       Unit::Models::Customers::Token::VerificationCreateResponse::Data::Type
                     }

            # @!parse
            #   # @param attributes [Unit::Models::Customers::Token::VerificationCreateResponse::Data::Attributes]
            #   # @param type [String]
            #   #
            #   def initialize(attributes:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # attributes => {
            #   verification_token: String
            # }
            # ```
            class Attributes < Unit::BaseModel
              # @!attribute verification_token
              #
              #   @return [String]
              optional :verification_token, String, api_name: :verificationToken

              # @!parse
              #   # @param verification_token [String]
              #   #
              #   def initialize(verification_token: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            # @example
            # ```ruby
            # case type
            # in :customerTokenVerification
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              CUSTOMER_TOKEN_VERIFICATION = :customerTokenVerification

              finalize!
            end
          end
        end
      end
    end
  end
end
