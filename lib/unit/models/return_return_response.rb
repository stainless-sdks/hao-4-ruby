# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # return_return_response => {
    #   data: Unit::Models::ReturnReturnResponse::Data
    # }
    # ```
    class ReturnReturnResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::ReturnReturnResponse::Data, nil]
      optional :data, -> { Unit::Models::ReturnReturnResponse::Data }

      # @!parse
      #   # @return [Unit::Models::ReturnReturnResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::ReturnReturnResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::Models::Accounts::Transaction
        # @!attribute attributes
        #
        #   @return [Unit::Models::ReturnReturnResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::ReturnReturnResponse::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::ReturnReturnResponse::Data::Relationships }

        # @!parse
        #   # @param attributes [Unit::Models::ReturnReturnResponse::Data::Attributes]
        #   # @param relationships [Unit::Models::ReturnReturnResponse::Data::Relationships]
        #   #
        #   def initialize(attributes:, relationships:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   amount: Integer,
        #   balance: Integer,
        #   company_name: String,
        #   created_at: Time,
        #   direction: Unit::Models::ReturnReturnResponse::Data::Attributes::Direction,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute balance
          #
          #   @return [Integer]
          required :balance, Integer

          # @!attribute company_name
          #
          #   @return [String]
          required :company_name, String, api_name: :companyName

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute direction
          #
          #   @return [Symbol, Unit::Models::ReturnReturnResponse::Data::Attributes::Direction]
          required :direction, enum: -> { Unit::Models::ReturnReturnResponse::Data::Attributes::Direction }

          # @!attribute reason
          #
          #   @return [String]
          required :reason, String

          # @!attribute summary
          #
          #   @return [String]
          required :summary, String

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param amount [Integer]
          #   # @param balance [Integer]
          #   # @param company_name [String]
          #   # @param created_at [String]
          #   # @param direction [String]
          #   # @param reason [String]
          #   # @param summary [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(amount:, balance:, company_name:, created_at:, direction:, reason:, summary:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case direction
          # in :Credit
          #   # ...
          # in :Debit
          #   # ...
          # end
          # ```
          class Direction < Unit::Enum
            CREDIT = :Credit
            DEBIT = :Debit

            finalize!
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   account: Unit::Models::ReturnReturnResponse::Data::Relationships::Account,
        #   returned: Unit::Models::ReturnReturnResponse::Data::Relationships::Returned,
        #   customer: Unit::Models::ReturnReturnResponse::Data::Relationships::Customer,
        #   customers: Unit::Models::ReturnReturnResponse::Data::Relationships::Customers
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Account }

          # @!attribute returned
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned]
          required :returned, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Returned }

          # @!attribute [r] customer
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer, nil]
          optional :customer, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Customer }

          # @!parse
          #   # @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer]
          #   attr_writer :customer

          # @!attribute [r] customers
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customers, nil]
          optional :customers, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Customers }

          # @!parse
          #   # @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customers]
          #   attr_writer :customers

          # @!parse
          #   # @param account [Unit::Models::ReturnReturnResponse::Data::Relationships::Account]
          #   # @param returned [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned]
          #   # @param customer [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer]
          #   # @param customers [Unit::Models::ReturnReturnResponse::Data::Relationships::Customers]
          #   #
          #   def initialize(account:, returned:, customer: nil, customers: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # account => {
          #   data: Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data
          # }
          # ```
          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ReturnReturnResponse::Data::Relationships::Account::Data::Type
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
          # returned => {
          #   data: Unit::Models::ReturnReturnResponse::Data::Relationships::Returned::Data
          # }
          # ```
          class Returned < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned::Data]
            required :data, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Returned::Data }

            # @!parse
            #   # @param data [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned::Data]
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
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [String]
              required :type, String

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          # ```ruby
          # customer => {
          #   data: Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data
          # }
          # ```
          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ReturnReturnResponse::Data::Relationships::Customer::Data::Type
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
          #   data: -> { Unit::ArrayOf[Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data] === _1 }
          # }
          # ```
          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data>]
            required :data,
                     -> {
                       Unit::ArrayOf[Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data]
                     }

            # @!parse
            #   # @param data [Array<Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data>]
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
      end
    end
  end
end
