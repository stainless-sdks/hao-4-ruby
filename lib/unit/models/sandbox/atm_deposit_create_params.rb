# frozen_string_literal: true

module Unit
  module Models
    module Sandbox
      class AtmDepositCreateParams < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Sandbox::AtmDepositCreateParams::Data]
        required :data, -> { Unit::Models::Sandbox::AtmDepositCreateParams::Data }

        # @!parse
        #   # @param data [Unit::Models::Sandbox::AtmDepositCreateParams::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # data => {
        #   attributes: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes,
        #   relationships: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships,
        #   type: enum: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes]
          required :attributes, -> { Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships]
          required :relationships, -> { Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateParams::Data::Type]
          required :type, enum: -> { Unit::Models::Sandbox::AtmDepositCreateParams::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes]
          #   # @param relationships [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   amount: Integer,
          #   atm_name: String,
          #   last4_digits: String,
          #   atm_location: String,
          #   card_network: enum: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes::CardNetwork
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute amount
            #
            #   @return [Integer]
            required :amount, Integer

            # @!attribute atm_name
            #
            #   @return [String]
            required :atm_name, String, api_name: :atmName

            # @!attribute last4_digits
            #
            #   @return [String]
            required :last4_digits, String, api_name: :last4Digits

            # @!attribute atm_location
            #
            #   @return [String]
            optional :atm_location, String, api_name: :atmLocation

            # @!attribute card_network
            #
            #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes::CardNetwork]
            optional :card_network,
                     enum: -> {
                       Unit::Models::Sandbox::AtmDepositCreateParams::Data::Attributes::CardNetwork
                     },
                     api_name: :cardNetwork

            # @!attribute surcharge
            #
            #   @return [Integer]
            optional :surcharge, Integer

            # @!parse
            #   # @param amount [Integer]
            #   # @param atm_name [String]
            #   # @param last4_digits [String]
            #   # @param atm_location [String]
            #   # @param card_network [String]
            #   # @param surcharge [Integer]
            #   #
            #   def initialize(amount:, atm_name:, last4_digits:, atm_location: nil, card_network: nil, surcharge: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case card_network
            # in :Visa
            #   # ...
            # in :Interlink
            #   # ...
            # in :Accel
            #   # ...
            # in :Allpoint
            #   # ...
            # in :Other
            #   # ...
            # end
            # ```
            class CardNetwork < Unit::Enum
              VISA = :Visa
              INTERLINK = :Interlink
              ACCEL = :Accel
              ALLPOINT = :Allpoint
              OTHER = :Other

              finalize!
            end
          end

          # @example
          #
          # ```ruby
          # relationships => {
          #   account: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account
          # }
          # ```
          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account]
            required :account,
                     -> {
                       Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account
                     }

            # @!parse
            #   # @param account [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account]
            #   #
            #   def initialize(account:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # account => {
            #   data: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data
            # }
            # ```
            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data]
              required :data,
                       -> {
                         Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data
                       }

              # @!parse
              #   # @param data [Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data]
              #   #
              #   def initialize(data:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # data => {
              #   id: String,
              #   type: enum: Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data::Type
              # }
              # ```
              class Data < Unit::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute type
                #
                #   @return [Symbol, Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Sandbox::AtmDepositCreateParams::Data::Relationships::Account::Data::Type
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
                # case type
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
          # case type
          # in :atmTransaction
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            ATM_TRANSACTION = :atmTransaction

            finalize!
          end
        end
      end
    end
  end
end
