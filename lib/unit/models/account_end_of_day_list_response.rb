# frozen_string_literal: true

module Unit
  module Models
    class AccountEndOfDayListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::AccountEndOfDayListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::AccountEndOfDayListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::AccountEndOfDayListResponse::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::AccountEndOfDayListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::AccountEndOfDayListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::AccountEndOfDayListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::AccountEndOfDayListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::AccountEndOfDayListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::AccountEndOfDayListResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute available
          #
          #   @return [Integer]
          required :available, Integer

          # @!attribute balance
          #
          #   @return [Integer]
          required :balance, Integer

          # @!attribute date
          #
          #   @return [Date]
          required :date, Date

          # @!attribute hold
          #
          #   @return [Integer]
          required :hold, Integer

          # @!attribute overdraft_limit
          #
          #   @return [Integer]
          optional :overdraft_limit, Integer, api_name: :overdraftLimit

          # @!parse
          #   # @param available [Integer]
          #   # @param balance [Integer]
          #   # @param date [String]
          #   # @param hold [Integer]
          #   # @param overdraft_limit [Integer]
          #   #
          #   def initialize(available:, balance:, date:, hold:, overdraft_limit: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer }

          # @!parse
          #   # @param account [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer]
          #   #
          #   def initialize(account:, customer:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account::Data]
            required :data,
                     -> {
                       Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Account::Data::Type
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

          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer::Data]
            required :data,
                     -> {
                       Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::AccountEndOfDayListResponse::Data::Relationships::Customer::Data::Type
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

                finalize!
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :accountEndOfDay
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          ACCOUNT_END_OF_DAY = :accountEndOfDay

          finalize!
        end
      end
    end
  end
end
