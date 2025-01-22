# frozen_string_literal: true

module Unit
  module Models
    module Counterparties
      # @example
      # ```ruby
      # balance_retrieve_response => {
      #   data: Unit::Models::Counterparties::BalanceRetrieveResponse::Data
      # }
      # ```
      class BalanceRetrieveResponse < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data, nil]
        optional :data, -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data }

        # @!parse
        #   # @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Counterparties::BalanceRetrieveResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   id: String,
        #   relationships: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships,
        #   type: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Type,
        #   attributes: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes
        # }
        # ```
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

          # @!attribute [r] attributes
          #
          #   @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes, nil]
          optional :attributes, -> { Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes }

          # @!parse
          #   # @return [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes]
          #   attr_writer :attributes

          # @!parse
          #   # @param id [String]
          #   # @param relationships [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships]
          #   # @param type [String]
          #   # @param attributes [Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Attributes]
          #   #
          #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # relationships => {
          #   counterparty: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty,
          #   customer: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer
          # }
          # ```
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

            # @example
            # ```ruby
            # counterparty => {
            #   data: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Counterparty::Data::Type
              # }
              # ```
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
                # ```ruby
                # case type
                # in :counterparty
                #   # ...
                # end
                # ```
                class Type < Unit::Enum
                  COUNTERPARTY = :counterparty

                  finalize!
                end
              end
            end

            # @example
            # ```ruby
            # customer => {
            #   data: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data
            # }
            # ```
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

              # @example
              # ```ruby
              # data => {
              #   id: String,
              #   type: Unit::Models::Counterparties::BalanceRetrieveResponse::Data::Relationships::Customer::Data::Type
              # }
              # ```
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
                # ```ruby
                # case type
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

                  finalize!
                end
              end
            end
          end

          # @example
          # ```ruby
          # case type
          # in :counterpartyBalance
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            COUNTERPARTY_BALANCE = :counterpartyBalance

            finalize!
          end

          # @example
          # ```ruby
          # attributes => {
          #   balance: Float,
          #   available: Float
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute balance
            #
            #   @return [Float]
            required :balance, Float

            # @!attribute [r] available
            #
            #   @return [Float, nil]
            optional :available, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :available

            # @!parse
            #   # @param balance [Float]
            #   # @param available [Float]
            #   #
            #   def initialize(balance:, available: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end
      end
    end
  end
end
