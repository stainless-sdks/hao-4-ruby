# frozen_string_literal: true

module Unit
  module Models
    class CardCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest]
      optional :data, union: -> { Unit::Models::CardCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case union
      # in Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest
      #   # ...
      # in Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest
      #   # ...
      # in Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest
      #   # ...
      # in Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest
      #   # ...
      # in Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest
      #   # ...
      # in Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest }

        variant -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest }

        variant -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest }

        variant -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest }

        variant -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest }

        variant -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest }

        class CreateIndividualDebitCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute active_for_online_use
            #
            #   @return [Boolean]
            optional :active_for_online_use, Unit::BooleanModel, api_name: :activeForOnlineUse

            # @!attribute additional_embossed_text
            #
            #   @return [String]
            optional :additional_embossed_text, String, api_name: :additionalEmbossedText

            # @!attribute bin
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Bin]
            optional :bin,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Bin }

            # @!attribute card_design_id
            #
            #   @return [String]
            optional :card_design_id, String, api_name: :cardDesignId

            # @!attribute card_qualifier
            #
            #   @return [String]
            optional :card_qualifier, String, api_name: :cardQualifier

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Limits }

            # @!attribute print_only_business_name
            #
            #   @return [Boolean]
            optional :print_only_business_name, Unit::BooleanModel, api_name: :printOnlyBusinessName

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::ShippingAddress]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param active_for_online_use [Boolean]
            #   # @param additional_embossed_text [String]
            #   # @param bin [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Bin]
            #   # @param card_design_id [String]
            #   # @param card_qualifier [String]
            #   # @param design [String]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::Limits]
            #   # @param print_only_business_name [Boolean]
            #   # @param shipping_address [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Attributes::ShippingAddress]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     active_for_online_use: nil,
            #     additional_embossed_text: nil,
            #     bin: nil,
            #     card_design_id: nil,
            #     card_qualifier: nil,
            #     design: nil,
            #     expiry_date: nil,
            #     idempotency_key: nil,
            #     limits: nil,
            #     print_only_business_name: nil,
            #     shipping_address: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Bin < Unit::BaseModel
              # @!attribute bin
              #
              #   @return [String]
              required :bin, String

              # @!attribute institution_id
              #
              #   @return [String]
              required :institution_id, String, api_name: :institutionId

              # @!parse
              #   # @param bin [String]
              #   # @param institution_id [String]
              #   #
              #   def initialize(bin:, institution_id:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class ShippingAddress < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :individualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_DEBIT_CARD = :individualDebitCard

            finalize!
          end
        end

        class CreateBusinessDebitCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Address]
            required :address,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Address }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date, api_name: :dateOfBirth

            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute full_name
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Phone }

            # @!attribute active_for_online_use
            #
            #   @return [Boolean]
            optional :active_for_online_use, Unit::BooleanModel, api_name: :activeForOnlineUse

            # @!attribute additional_embossed_text
            #
            #   @return [String]
            optional :additional_embossed_text, String, api_name: :additionalEmbossedText

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Limits }

            # @!attribute nationality
            #
            #   @return [String]
            optional :nationality, String

            # @!attribute passport
            #
            #   @return [String]
            optional :passport, String

            # @!attribute print_only_business_name
            #
            #   @return [Boolean]
            optional :print_only_business_name, Unit::BooleanModel, api_name: :printOnlyBusinessName

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::ShippingAddress]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute ssn
            #
            #   @return [String]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::FullName]
            #   # @param phone [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Phone]
            #   # @param active_for_online_use [Boolean]
            #   # @param additional_embossed_text [String]
            #   # @param design [String]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::Limits]
            #   # @param nationality [String]
            #   # @param passport [String]
            #   # @param print_only_business_name [Boolean]
            #   # @param shipping_address [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Attributes::ShippingAddress]
            #   # @param ssn [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     active_for_online_use: nil,
            #     additional_embossed_text: nil,
            #     design: nil,
            #     expiry_date: nil,
            #     idempotency_key: nil,
            #     limits: nil,
            #     nationality: nil,
            #     passport: nil,
            #     print_only_business_name: nil,
            #     shipping_address: nil,
            #     ssn: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class FullName < Unit::BaseModel
              # @!attribute first
              #
              #   @return [String]
              required :first, String

              # @!attribute last
              #
              #   @return [String]
              required :last, String

              # @!parse
              #   # @param first [String]
              #   # @param last [String]
              #   #
              #   def initialize(first:, last:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Phone < Unit::BaseModel
              # @!attribute country_code
              #
              #   @return [String]
              required :country_code, String, api_name: :countryCode

              # @!attribute number
              #
              #   @return [String]
              required :number, String

              # @!parse
              #   # @param country_code [String]
              #   # @param number [String]
              #   #
              #   def initialize(country_code:, number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class ShippingAddress < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessDebitCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :businessDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_DEBIT_CARD = :businessDebitCard

            finalize!
          end
        end

        class CreateBusinessCreditCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Address]
            required :address,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Address }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date, api_name: :dateOfBirth

            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute full_name
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Phone }

            # @!attribute active_for_online_use
            #
            #   @return [Boolean]
            optional :active_for_online_use, Unit::BooleanModel, api_name: :activeForOnlineUse

            # @!attribute additional_embossed_text
            #
            #   @return [String]
            optional :additional_embossed_text, String, api_name: :additionalEmbossedText

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Limits }

            # @!attribute nationality
            #
            #   @return [String]
            optional :nationality, String

            # @!attribute passport
            #
            #   @return [String]
            optional :passport, String

            # @!attribute print_only_business_name
            #
            #   @return [Boolean]
            optional :print_only_business_name, Unit::BooleanModel, api_name: :printOnlyBusinessName

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::ShippingAddress]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute ssn
            #
            #   @return [String]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::FullName]
            #   # @param phone [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Phone]
            #   # @param active_for_online_use [Boolean]
            #   # @param additional_embossed_text [String]
            #   # @param design [String]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::Limits]
            #   # @param nationality [String]
            #   # @param passport [String]
            #   # @param print_only_business_name [Boolean]
            #   # @param shipping_address [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Attributes::ShippingAddress]
            #   # @param ssn [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     active_for_online_use: nil,
            #     additional_embossed_text: nil,
            #     design: nil,
            #     expiry_date: nil,
            #     idempotency_key: nil,
            #     limits: nil,
            #     nationality: nil,
            #     passport: nil,
            #     print_only_business_name: nil,
            #     shipping_address: nil,
            #     ssn: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class FullName < Unit::BaseModel
              # @!attribute first
              #
              #   @return [String]
              required :first, String

              # @!attribute last
              #
              #   @return [String]
              required :last, String

              # @!parse
              #   # @param first [String]
              #   # @param last [String]
              #   #
              #   def initialize(first:, last:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Phone < Unit::BaseModel
              # @!attribute country_code
              #
              #   @return [String]
              required :country_code, String, api_name: :countryCode

              # @!attribute number
              #
              #   @return [String]
              required :number, String

              # @!parse
              #   # @param country_code [String]
              #   # @param number [String]
              #   #
              #   def initialize(country_code:, number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class ShippingAddress < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessCreditCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :businessCreditCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_CREDIT_CARD = :businessCreditCard

            finalize!
          end
        end

        class CreateIndividualVirtualDebitCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute bin
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Bin]
            optional :bin,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Bin }

            # @!attribute card_qualifier
            #
            #   @return [String]
            optional :card_qualifier, String, api_name: :cardQualifier

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Limits }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param bin [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Bin]
            #   # @param card_qualifier [String]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Attributes::Limits]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(bin: nil, card_qualifier: nil, expiry_date: nil, idempotency_key: nil, limits: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Bin < Unit::BaseModel
              # @!attribute bin
              #
              #   @return [String]
              required :bin, String

              # @!attribute institution_id
              #
              #   @return [String]
              required :institution_id, String, api_name: :institutionId

              # @!parse
              #   # @param bin [String]
              #   # @param institution_id [String]
              #   #
              #   def initialize(bin:, institution_id:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateIndividualVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :individualVirtualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_VIRTUAL_DEBIT_CARD = :individualVirtualDebitCard

            finalize!
          end
        end

        class CreateBusinessVirtualDebitCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Address]
            required :address,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Address }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date, api_name: :dateOfBirth

            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute full_name
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Phone }

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Limits }

            # @!attribute nationality
            #
            #   @return [String]
            optional :nationality, String

            # @!attribute passport
            #
            #   @return [String]
            optional :passport, String

            # @!attribute ssn
            #
            #   @return [String]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::FullName]
            #   # @param phone [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Phone]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Attributes::Limits]
            #   # @param nationality [String]
            #   # @param passport [String]
            #   # @param ssn [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     expiry_date: nil,
            #     idempotency_key: nil,
            #     limits: nil,
            #     nationality: nil,
            #     passport: nil,
            #     ssn: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class FullName < Unit::BaseModel
              # @!attribute first
              #
              #   @return [String]
              required :first, String

              # @!attribute last
              #
              #   @return [String]
              required :last, String

              # @!parse
              #   # @param first [String]
              #   # @param last [String]
              #   #
              #   def initialize(first:, last:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Phone < Unit::BaseModel
              # @!attribute country_code
              #
              #   @return [String]
              required :country_code, String, api_name: :countryCode

              # @!attribute number
              #
              #   @return [String]
              required :number, String

              # @!parse
              #   # @param country_code [String]
              #   # @param number [String]
              #   #
              #   def initialize(country_code:, number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualDebitCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :businessVirtualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_VIRTUAL_DEBIT_CARD = :businessVirtualDebitCard

            finalize!
          end
        end

        class CreateBusinessVirtualCreditCardRequest < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes]
          required :attributes,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes }

          # @!attribute relationships
          #
          #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships]
          required :relationships,
                   -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes]
          #   # @param relationships [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, relationships:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Address]
            required :address,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Address }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            required :date_of_birth, Date, api_name: :dateOfBirth

            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute full_name
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Phone }

            # @!attribute expiry_date
            #
            #   @return [String]
            optional :expiry_date, String, api_name: :expiryDate

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute limits
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Limits }

            # @!attribute nationality
            #
            #   @return [String]
            optional :nationality, String

            # @!attribute passport
            #
            #   @return [String]
            optional :passport, String

            # @!attribute ssn
            #
            #   @return [String]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::FullName]
            #   # @param phone [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Phone]
            #   # @param expiry_date [String]
            #   # @param idempotency_key [String]
            #   # @param limits [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Attributes::Limits]
            #   # @param nationality [String]
            #   # @param passport [String]
            #   # @param ssn [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     expiry_date: nil,
            #     idempotency_key: nil,
            #     limits: nil,
            #     nationality: nil,
            #     passport: nil,
            #     ssn: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Address < Unit::BaseModel
              # @!attribute city
              #
              #   @return [String]
              required :city, String

              # @!attribute country
              #
              #   @return [String]
              required :country, String

              # @!attribute postal_code
              #
              #   @return [String]
              required :postal_code, String, api_name: :postalCode

              # @!attribute state
              #
              #   @return [String]
              required :state, String

              # @!attribute street
              #
              #   @return [String]
              required :street, String

              # @!attribute street2
              #
              #   @return [String, nil]
              optional :street2, String

              # @!parse
              #   # @param city [String]
              #   # @param country [String]
              #   # @param postal_code [String]
              #   # @param state [String]
              #   # @param street [String]
              #   # @param street2 [String, nil]
              #   #
              #   def initialize(city:, country:, postal_code:, state:, street:, street2: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class FullName < Unit::BaseModel
              # @!attribute first
              #
              #   @return [String]
              required :first, String

              # @!attribute last
              #
              #   @return [String]
              required :last, String

              # @!parse
              #   # @param first [String]
              #   # @param last [String]
              #   #
              #   def initialize(first:, last:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Phone < Unit::BaseModel
              # @!attribute country_code
              #
              #   @return [String]
              required :country_code, String, api_name: :countryCode

              # @!attribute number
              #
              #   @return [String]
              required :number, String

              # @!parse
              #   # @param country_code [String]
              #   # @param number [String]
              #   #
              #   def initialize(country_code:, number:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class Limits < Unit::BaseModel
              # @!attribute daily_purchase
              #
              #   @return [Integer]
              optional :daily_purchase, Integer, api_name: :dailyPurchase

              # @!attribute daily_withdrawal
              #
              #   @return [Integer]
              optional :daily_withdrawal, Integer, api_name: :dailyWithdrawal

              # @!attribute monthly_purchase
              #
              #   @return [Integer]
              optional :monthly_purchase, Integer, api_name: :monthlyPurchase

              # @!attribute monthly_withdrawal
              #
              #   @return [Integer]
              optional :monthly_withdrawal, Integer, api_name: :monthlyWithdrawal

              # @!parse
              #   # @param daily_purchase [Integer]
              #   # @param daily_withdrawal [Integer]
              #   # @param monthly_purchase [Integer]
              #   # @param monthly_withdrawal [Integer]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          class Relationships < Unit::BaseModel
            # @!attribute account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account]
            required :account,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account }

            # @!attribute customer
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer]
            optional :customer,
                     -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer }

            # @!attribute default_funding_account
            #
            #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount]
            optional :default_funding_account,
                     -> {
                       Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount
                     },
                     api_name: :defaultFundingAccount

            # @!parse
            #   # @param account [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account]
            #   # @param customer [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer]
            #   # @param default_funding_account [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount]
            #   #
            #   def initialize(account:, customer: nil, default_funding_account: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class Account < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Account::Data::Type
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
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer::Data]
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
                #   @return [Symbol, Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer::Data::Type]
                required :type,
                         enum: -> {
                           Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::Customer::Data::Type
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

            class DefaultFundingAccount < Unit::BaseModel
              # @!attribute data
              #
              #   @return [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount::Data]
              required :data,
                       -> { Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount::Data }

              # @!parse
              #   # @param data [Unit::Models::CardCreateParams::Data::CreateBusinessVirtualCreditCardRequest::Relationships::DefaultFundingAccount::Data]
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
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :businessVirtualCreditCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_VIRTUAL_CREDIT_CARD = :businessVirtualCreditCard

            finalize!
          end
        end
      end
    end
  end
end
