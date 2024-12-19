# frozen_string_literal: true

module Unit
  module Models
    module Counterparties
      class BalanceRetrieveResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data]
        optional :data, -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Counterparties::BalanceRetrieveResponse::Data, nil]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute relationships
          #
          #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships]
          required :relationships,
                   -> {
                     Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Type]
          required :type, enum: -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Type }

          # @!attribute attributes
          #
          #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes]
          optional :attributes, -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes }

          # @!parse
          #   # @param id [String]
          #   # @param relationships [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships]
          #   # @param type [String]
          #   # @param attributes [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes, nil]
          #   #
          #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Relationships < Unit::BaseModel
            # @!attribute counterparty
            #
            #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty]
            required :counterparty,
                     -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty }

            # @!attribute customer
            #
            #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer]
            required :customer,
                     -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer }

            # @!parse
            #   # @param counterparty [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty]
            #   # @param customer [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer]
            #   #
            #   def initialize(counterparty:, customer:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Counterparty < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data]
              required :data,
                       -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data }

              # @!parse
              #   # @param data [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data]
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
                #   @return [Symbol, Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data::Type
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
                # in :counterparty
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  COUNTERPARTY = :counterparty
                end
              end
            end

            class Customer < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data::Type
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
                # in :customer
                #   # ...
                # in :businessCustomer
                #   # ...
                # in :individualCustomer
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  CUSTOMER = :customer
                  BUSINESS_CUSTOMER = :businessCustomer
                  INDIVIDUAL_CUSTOMER = :individualCustomer
                end
              end
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :counterpartyBalance
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            COUNTERPARTY_BALANCE = :counterpartyBalance
          end

          class Attributes < Unit::BaseModel
            # @!attribute balance
            #
            #   @return [Float]
            required :balance, Float

            # @!attribute available
            #
            #   @return [Float]
            optional :available, Float

            # @!parse
            #   # @param balance [Float]
            #   # @param available [Float, nil]
            #   #
            #   def initialize(balance:, available: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end
      end
    end
  end
end
