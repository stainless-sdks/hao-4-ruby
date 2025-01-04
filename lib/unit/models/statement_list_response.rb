# frozen_string_literal: true

module Unit
  module Models
    class StatementListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::StatementListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::StatementListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::StatementListResponse::Data>]
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
        #   @return [Unit::Models::StatementListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::StatementListResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::StatementListResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::StatementListResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::StatementListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::StatementListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::StatementListResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::StatementListResponse::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute period
          #
          #   @return [String]
          optional :period, String

          # @!parse
          #   # @param period [String]
          #   #
          #   def initialize(period: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Account]
          optional :account, -> { Unit::Models::StatementListResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::StatementListResponse::Data::Relationships::Customer }

          # @!attribute customers
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Customers]
          optional :customers, -> { Unit::Models::StatementListResponse::Data::Relationships::Customers }

          # @!parse
          #   # @param account [Unit::Models::StatementListResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::StatementListResponse::Data::Relationships::Customer]
          #   # @param customers [Unit::Models::StatementListResponse::Data::Relationships::Customers]
          #   #
          #   def initialize(account: nil, customer: nil, customers: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::StatementListResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::StatementListResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::StatementListResponse::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::StatementListResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::StatementListResponse::Data::Relationships::Account::Data::Type
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
            #   @return [Unit::Models::StatementListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::StatementListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::StatementListResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::StatementListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::StatementListResponse::Data::Relationships::Customer::Data::Type
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

          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::StatementListResponse::Data::Relationships::Customers::Data>]
            required :data,
                     Unit::ArrayOf[-> {
                       Unit::Models::StatementListResponse::Data::Relationships::Customers::Data
                     }]

            # @!parse
            #   # @param data [Array<Unit::Models::StatementListResponse::Data::Relationships::Customers::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              optional :id, String

              # @!attribute type
              #
              #   @return [String]
              optional :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :statement
        #   # ...
        # in :accountStatementDTO
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          STATEMENT = :statement
          ACCOUNT_STATEMENT_DTO = :accountStatementDTO

          finalize!
        end
      end
    end
  end
end
