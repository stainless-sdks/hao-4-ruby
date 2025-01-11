# frozen_string_literal: true

module Unit
  module Models
    class CardUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard]
      required :data, union: -> { Unit::Models::CardUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case data
      # in Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard
      #   # ...
      # in Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard
      #   # ...
      # in Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard
      #   # ...
      # in Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard
      #   # ...
      # in Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard
      #   # ...
      # in Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard }

        variant -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard }

        variant -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard }

        variant -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard }

        variant -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard }

        variant -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard }

        # @example
        #
        # ```ruby
        # update_individual_debit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Type
        # }
        # ```
        class UpdateIndividualDebitCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Type]
          required :type, enum: -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   default_funding_account_id: String,
          #   design: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::Limits,
          #   shipping_address: Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::ShippingAddress,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::Limits }

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::ShippingAddress, nil]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param default_funding_account_id [String, nil]
            #   # @param design [String]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::Limits]
            #   # @param shipping_address [Unit::Models::CardUpdateParams::Data::UpdateIndividualDebitCard::Attributes::ShippingAddress, nil]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(default_funding_account_id: nil, design: nil, limits: nil, shipping_address: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # shipping_address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

          # @example
          #
          # ```ruby
          # case type
          # in :individualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_DEBIT_CARD = :individualDebitCard

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_individual_virtual_debit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Type
        # }
        # ```
        class UpdateIndividualVirtualDebitCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes]
          required :attributes,
                   -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   default_funding_account_id: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes::Limits,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes::Limits }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param default_funding_account_id [String, nil]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateIndividualVirtualDebitCard::Attributes::Limits]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(default_funding_account_id: nil, limits: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

          # @example
          #
          # ```ruby
          # case type
          # in :individualVirtualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_VIRTUAL_DEBIT_CARD = :individualVirtualDebitCard

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_business_debit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Type
        # }
        # ```
        class UpdateBusinessDebitCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Type]
          required :type, enum: -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Address,
          #   default_funding_account_id: String,
          #   design: String,
          #   email: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Limits,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Address]
            optional :address,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Address }

            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute email
            #
            #   @return [String]
            optional :email, String

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Limits]
            optional :limits,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Limits
                     }

            # @!attribute phone
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Phone]
            optional :phone,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Phone
                     }

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::ShippingAddress, nil]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Address]
            #   # @param default_funding_account_id [String, nil]
            #   # @param design [String]
            #   # @param email [String]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Limits]
            #   # @param phone [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::Phone]
            #   # @param shipping_address [Unit::Models::CardUpdateParams::Data::UpdateBusinessDebitCard::Attributes::ShippingAddress, nil]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address: nil,
            #     default_funding_account_id: nil,
            #     design: nil,
            #     email: nil,
            #     limits: nil,
            #     phone: nil,
            #     shipping_address: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # phone => {
            #   country_code: String,
            #   number: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # shipping_address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

          # @example
          #
          # ```ruby
          # case type
          # in :businessDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_DEBIT_CARD = :businessDebitCard

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_business_virtual_debit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Type
        # }
        # ```
        class UpdateBusinessVirtualDebitCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes]
          required :attributes,
                   -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Address,
          #   default_funding_account_id: String,
          #   email: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Limits,
          #   phone: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Phone
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Address]
            optional :address,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Address }

            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute email
            #
            #   @return [String]
            optional :email, String

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Limits }

            # @!attribute phone
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Phone]
            optional :phone,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Phone }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Address]
            #   # @param default_funding_account_id [String, nil]
            #   # @param email [String]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Limits]
            #   # @param phone [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualDebitCard::Attributes::Phone]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(address: nil, default_funding_account_id: nil, email: nil, limits: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # phone => {
            #   country_code: String,
            #   number: String
            # }
            # ```
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
          end

          # @example
          #
          # ```ruby
          # case type
          # in :businessVirtualDebitCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_VIRTUAL_DEBIT_CARD = :businessVirtualDebitCard

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_business_credit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Type
        # }
        # ```
        class UpdateBusinessCreditCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes]
          required :attributes,
                   -> {
                     Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes
                   }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Type]
          required :type, enum: -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Type }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Address,
          #   default_funding_account_id: String,
          #   design: String,
          #   email: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Limits,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Address]
            optional :address,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Address }

            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute design
            #
            #   @return [String]
            optional :design, String

            # @!attribute email
            #
            #   @return [String]
            optional :email, String

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Limits }

            # @!attribute phone
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Phone]
            optional :phone,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Phone
                     }

            # @!attribute shipping_address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::ShippingAddress, nil]
            optional :shipping_address,
                     -> {
                       Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::ShippingAddress
                     },
                     api_name: :shippingAddress

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Address]
            #   # @param default_funding_account_id [String, nil]
            #   # @param design [String]
            #   # @param email [String]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Limits]
            #   # @param phone [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::Phone]
            #   # @param shipping_address [Unit::Models::CardUpdateParams::Data::UpdateBusinessCreditCard::Attributes::ShippingAddress, nil]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(
            #     address: nil,
            #     default_funding_account_id: nil,
            #     design: nil,
            #     email: nil,
            #     limits: nil,
            #     phone: nil,
            #     shipping_address: nil,
            #     tags: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # phone => {
            #   country_code: String,
            #   number: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # shipping_address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

          # @example
          #
          # ```ruby
          # case type
          # in :businessCreditCard
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_CREDIT_CARD = :businessCreditCard

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_business_virtual_credit_card => {
        #   attributes: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes,
        #   type: enum: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Type
        # }
        # ```
        class UpdateBusinessVirtualCreditCard < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes]
          required :attributes,
                   -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Type]
          required :type,
                   enum: -> {
                     Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   address: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Address,
          #   default_funding_account_id: String,
          #   email: String,
          #   limits: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Limits,
          #   phone: Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Phone
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Address]
            optional :address,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Address }

            # @!attribute default_funding_account_id
            #
            #   @return [String, nil]
            optional :default_funding_account_id, String, api_name: :defaultFundingAccountId

            # @!attribute email
            #
            #   @return [String]
            optional :email, String

            # @!attribute limits
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Limits]
            optional :limits,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Limits }

            # @!attribute phone
            #
            #   @return [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Phone]
            optional :phone,
                     -> { Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Phone }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param address [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Address]
            #   # @param default_funding_account_id [String, nil]
            #   # @param email [String]
            #   # @param limits [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Limits]
            #   # @param phone [Unit::Models::CardUpdateParams::Data::UpdateBusinessVirtualCreditCard::Attributes::Phone]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(address: nil, default_funding_account_id: nil, email: nil, limits: nil, phone: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # address => {
            #   city: String,
            #   country: String,
            #   postal_code: String,
            #   state: String,
            #   street: String
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # limits => {
            #   daily_purchase: Integer,
            #   daily_withdrawal: Integer,
            #   monthly_purchase: Integer,
            #   monthly_withdrawal: Integer
            # }
            # ```
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

            # @example
            #
            # ```ruby
            # phone => {
            #   country_code: String,
            #   number: String
            # }
            # ```
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
          end

          # @example
          #
          # ```ruby
          # case type
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
