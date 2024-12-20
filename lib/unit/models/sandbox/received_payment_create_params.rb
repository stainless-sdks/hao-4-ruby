# frozen_string_literal: true

module Unit
  module Models
    module Sandbox
      class ReceivedPaymentCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data]
        required :data, -> { Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Attributes]
          required :attributes, -> { Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Type]
          required :type, enum: -> { Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Attributes]
          #   # @param relationships [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute company_name
            #
            #   @return [String]
            required :company_name, String, api_name: :companyName

            # @!attribute completion_date
            #
            #   @return [Date]
            required :completion_date, Date, api_name: :completionDate

            # @!attribute description
            #
            #   @return [String]
            required :description, String

            # @!attribute sec_code
            #
            #   @return [String]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @param amount [Integer]
            #   # @param company_name [String]
            #   # @param completion_date [String]
            #   # @param description [String]
            #   # @param sec_code [String, nil]
            #   #
            #   def initialize(amount:, company_name:, completion_date:, description:, sec_code: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account]
            required :account,
                     -> {
                       Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account
                     }

            # @!parse
            #   # @param account [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::ReceivedPaymentCreateParams::Data::Relationships::Account::Data::Type
                         }

                # @!parse
                #   # @param id [String]
                #   # @param type [String]
                #   #
                #   def initialize(id:, type:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
                # in :account
                #   # ...
                # in :depositAccount
                #   # ...
                # in :creditAccount
                #   # ...
                # in :batchAccount
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  ACCOUNT = :account
                  DEPOSIT_ACCOUNT = :depositAccount
                  CREDIT_ACCOUNT = :creditAccount
                  BATCH_ACCOUNT = :batchAccount

                  finalize!
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :achReceivedPayment
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ACH_RECEIVED_PAYMENT = :achReceivedPayment

            finalize!
          end
        end
      end
    end
  end
end
