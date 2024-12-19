# frozen_string_literal: true

module Unit
  module Models
    module Sandbox
      class ReceivedACHPaymentCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data]
        required :data, -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Attributes]
          required :attributes, -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Type]
          required :type, enum: -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Attributes]
          #   # @param relationships [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships]
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

            # @!attribute settlement_date
            #
            #   @return [Date]
            required :settlement_date, Date, api_name: :settlementDate

            # @!attribute direction
            #
            #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Attributes::Direction]
            optional :direction,
                     enum: -> {
                       Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Attributes::Direction
                     }

            # @!attribute receiving_entity_name
            #
            #   @return [String]
            optional :receiving_entity_name, String, api_name: :receivingEntityName

            # @!attribute sec_code
            #
            #   @return [String]
            optional :sec_code, String, api_name: :secCode

            # @!parse
            #   # @param amount [Integer]
            #   # @param company_name [String]
            #   # @param settlement_date [String]
            #   # @param direction [String, nil]
            #   # @param receiving_entity_name [String, nil]
            #   # @param sec_code [String, nil]
            #   #
            #   def initialize(amount:, company_name:, settlement_date:, direction: nil, receiving_entity_name: nil, sec_code: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :Debit
            #   # ...
            # in :Credit
            #   # ...
            # end
            # ```
            class Direction < Unit::Enum
              DEBIT = :Debit
              CREDIT = :Credit
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account]
            required :account,
                     -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account }

            # @!parse
            #   # @param account [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::ReceivedACHPaymentCreateParams::Data::Relationships::Account::Data::Type
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
          end
        end
      end
    end
  end
end
