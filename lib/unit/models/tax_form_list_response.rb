# frozen_string_literal: true

module Unit
  module Models
    class TaxFormListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::TaxFormListResponse::Data>]
      optional :data, Unit::ArrayOf[-> { Unit::Models::TaxFormListResponse::Data }]

      # @!parse
      #   # @param data [Array<Unit::Models::TaxFormListResponse::Data>, nil]
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
        #   @return [Unit::Models::TaxFormListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::TaxFormListResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::TaxFormListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::TaxFormListResponse::Data::Type }

        # @!attribute relationships
        #
        #   @return [Unit::Models::TaxFormListResponse::Data::Relationships]
        optional :relationships, -> { Unit::Models::TaxFormListResponse::Data::Relationships }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::TaxFormListResponse::Data::Attributes]
        #   # @param type [String]
        #   # @param relationships [Unit::Models::TaxFormListResponse::Data::Relationships, nil]
        #   #
        #   def initialize(id:, attributes:, type:, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute form_type
          #
          #   @return [String]
          required :form_type, String, api_name: :formType

          # @!attribute tax_year
          #
          #   @return [String]
          required :tax_year, String, api_name: :taxYear

          # @!parse
          #   # @param form_type [String]
          #   # @param tax_year [String]
          #   #
          #   def initialize(form_type:, tax_year:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :taxForm
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          TAX_FORM = :taxForm
        end

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::TaxFormListResponse::Data::Relationships::Account]
          optional :account, -> { Unit::Models::TaxFormListResponse::Data::Relationships::Account }

          # @!attribute accounts
          #
          #   @return [Unit::Models::TaxFormListResponse::Data::Relationships::Accounts]
          optional :accounts, -> { Unit::Models::TaxFormListResponse::Data::Relationships::Accounts }

          # @!attribute customer
          #
          #   @return [Unit::Models::TaxFormListResponse::Data::Relationships::Customer]
          optional :customer, -> { Unit::Models::TaxFormListResponse::Data::Relationships::Customer }

          # @!parse
          #   # @param account [Unit::Models::TaxFormListResponse::Data::Relationships::Account, nil]
          #   # @param accounts [Unit::Models::TaxFormListResponse::Data::Relationships::Accounts, nil]
          #   # @param customer [Unit::Models::TaxFormListResponse::Data::Relationships::Customer, nil]
          #   #
          #   def initialize(account: nil, accounts: nil, customer: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::TaxFormListResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::TaxFormListResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::TaxFormListResponse::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::TaxFormListResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormListResponse::Data::Relationships::Account::Data::Type
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

          class Accounts < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Array<Unit::Models::TaxFormListResponse::Data::Relationships::Accounts::Data>]
            required :data,
                     Unit::ArrayOf[-> {
                       Unit::Models::TaxFormListResponse::Data::Relationships::Accounts::Data
                     }]

            # @!parse
            #   # @param data [Array<Unit::Models::TaxFormListResponse::Data::Relationships::Accounts::Data>]
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
              #   @return [Symbol, Unit::Models::TaxFormListResponse::Data::Relationships::Accounts::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormListResponse::Data::Relationships::Accounts::Data::Type
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

          class Customer < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::TaxFormListResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::TaxFormListResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::TaxFormListResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::TaxFormListResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::TaxFormListResponse::Data::Relationships::Customer::Data::Type
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
      end
    end
  end
end
