# frozen_string_literal: true

module Unit
  module Models
    class ReturnReturnResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ReturnReturnResponse::Data]
      optional :data, -> { Unit::Models::ReturnReturnResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::ReturnReturnResponse::Data, nil]
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

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param amount [Integer]
          #   # @param balance [Integer]
          #   # @param company_name [String]
          #   # @param created_at [String]
          #   # @param direction [String]
          #   # @param reason [String]
          #   # @param summary [String]
          #   # @param tags [Hash{Symbol => String}, nil]
          #   #
          #   def initialize(amount:, balance:, company_name:, created_at:, direction:, reason:, summary:, tags: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :Credit
          #   # ...
          # in :Debit
          #   # ...
          # end
          # ```
          class Direction < Unit::Enum
            CREDIT = :Credit
            DEBIT = :Debit
          end
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Account }

          # @!attribute returned
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned]
          required :returned, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Returned }

          # @!attribute customer
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Customer }

          # @!attribute customers
          #
          #   @return [Unit::Models::ReturnReturnResponse::Data::Relationships::Customers]
          optional :customers, -> { Unit::Models::ReturnReturnResponse::Data::Relationships::Customers }

          # @!parse
          #   # @param account [Unit::Models::ReturnReturnResponse::Data::Relationships::Account]
          #   # @param returned [Unit::Models::ReturnReturnResponse::Data::Relationships::Returned]
          #   # @param customer [Unit::Models::ReturnReturnResponse::Data::Relationships::Customer, nil]
          #   # @param customers [Unit::Models::ReturnReturnResponse::Data::Relationships::Customers, nil]
          #   #
          #   def initialize(account:, returned:, customer: nil, customers: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

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

          class Customers < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data>]
            required :data,
                     Unit::ArrayOf[-> {
                       Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data
                     }]

            # @!parse
            #   # @param data [Array<Unit::Models::ReturnReturnResponse::Data::Relationships::Customers::Data>]
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
              #   # @param id [String, nil]
              #   # @param type [String, nil]
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
