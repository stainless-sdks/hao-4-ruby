# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # statement_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::StatementListResponse::Data] === _1 }
    # }
    # ```
    class StatementListResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Array<Unit::Models::StatementListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::StatementListResponse::Data] }

      # @!parse
      #   # @return [Array<Unit::Models::StatementListResponse::Data>]
      #   attr_writer :data

      # @!parse
      #   # @param data [Array<Unit::Models::StatementListResponse::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::StatementListResponse::Data::Attributes,
      #   relationships: Unit::Models::StatementListResponse::Data::Relationships,
      #   type: enum: Unit::Models::StatementListResponse::Data::Type
      # }
      # ```
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

        # @example
        # ```ruby
        # attributes => {
        #   period: String
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] period
          #
          #   @return [String, nil]
          optional :period, String

          # @!parse
          #   # @return [String]
          #   attr_writer :period

          # @!parse
          #   # @param period [String]
          #   #
          #   def initialize(period: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::StatementListResponse::Data::Relationships::Account,
        #   customer: Unit::Models::StatementListResponse::Data::Relationships::Customer,
        #   customers: Unit::Models::StatementListResponse::Data::Relationships::Customers
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute [r] account
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Account, nil]
          optional :account, -> { Unit::Models::StatementListResponse::Data::Relationships::Account }

          # @!parse
          #   # @return [Unit::Models::StatementListResponse::Data::Relationships::Account]
          #   attr_writer :account

          # @!attribute [r] customer
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Customer, nil]
          optional :customer, -> { Unit::Models::StatementListResponse::Data::Relationships::Customer }

          # @!parse
          #   # @return [Unit::Models::StatementListResponse::Data::Relationships::Customer]
          #   attr_writer :customer

          # @!attribute [r] customers
          #
          #   @return [Unit::Models::StatementListResponse::Data::Relationships::Customers, nil]
          optional :customers, -> { Unit::Models::StatementListResponse::Data::Relationships::Customers }

          # @!parse
          #   # @return [Unit::Models::StatementListResponse::Data::Relationships::Customers]
          #   attr_writer :customers

          # @!parse
          #   # @param account [Unit::Models::StatementListResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::StatementListResponse::Data::Relationships::Customer]
          #   # @param customers [Unit::Models::StatementListResponse::Data::Relationships::Customers]
          #   #
          #   def initialize(account: nil, customer: nil, customers: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::StatementListResponse::Data::Relationships::Account::Data
          # }
          # ```
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

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::StatementListResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
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

          # @example
          # ```ruby
          # customer => {
          #   data: Unit::Models::StatementListResponse::Data::Relationships::Customer::Data
          # }
          # ```
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

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::StatementListResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
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

          # @example
          # ```ruby
          # customers => {
          #   data: -> { Unit::ArrayOf[Unit::Models::StatementListResponse::Data::Relationships::Customers::Data] === _1 }
          # }
          # ```
          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::StatementListResponse::Data::Relationships::Customers::Data>]
            required :data,
                     -> {
                       Unit::ArrayOf[Unit::Models::StatementListResponse::Data::Relationships::Customers::Data]
                     }

            # @!parse
            #   # @param data [Array<Unit::Models::StatementListResponse::Data::Relationships::Customers::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: String
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute [r] id
              #
              #   @return [String, nil]
              optional :id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :id

              # @!attribute [r] type
              #
              #   @return [String, nil]
              optional :type, String

              # @!parse
              #   # @return [String]
              #   attr_writer :type

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
        # ```ruby
        # case type
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
