# frozen_string_literal: true

module Unit
  module Models
    module Cards
      class LimitRetrieveResponse < Unit::BaseModel
        # @!attribute data
        #
        #   @return [Unit::Models::Cards::LimitRetrieveResponse::Data]
        required :data, -> { Unit::Models::Cards::LimitRetrieveResponse::Data }

        # @!parse
        #   # @param data [Unit::Models::Cards::LimitRetrieveResponse::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Data < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Cards::LimitRetrieveResponse::Data::Type]
          required :type, enum: -> { Unit::Models::Cards::LimitRetrieveResponse::Data::Type }

          # @!parse
          #   # @param attributes [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Attributes < Unit::BaseModel
            # @!attribute daily_totals
            #
            #   @return [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::DailyTotals]
            required :daily_totals,
                     -> { Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::DailyTotals },
                     api_name: :dailyTotals

            # @!attribute monthly_totals
            #
            #   @return [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::MonthlyTotals]
            required :monthly_totals,
                     -> { Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::MonthlyTotals },
                     api_name: :monthlyTotals

            # @!attribute limits
            #
            #   @return [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::Limits]
            optional :limits, -> { Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::Limits }

            # @!parse
            #   # @param daily_totals [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::DailyTotals]
            #   # @param monthly_totals [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::MonthlyTotals]
            #   # @param limits [Unit::Models::Cards::LimitRetrieveResponse::Data::Attributes::Limits, nil]
            #   #
            #   def initialize(daily_totals:, monthly_totals:, limits: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            class DailyTotals < Unit::BaseModel
              # @!attribute card_transactions
              #
              #   @return [Integer]
              required :card_transactions, Integer, api_name: :cardTransactions

              # @!attribute deposits
              #
              #   @return [Integer]
              required :deposits, Integer

              # @!attribute purchases
              #
              #   @return [Integer]
              required :purchases, Integer

              # @!attribute withdrawals
              #
              #   @return [Integer]
              required :withdrawals, Integer

              # @!parse
              #   # @param card_transactions [Integer]
              #   # @param deposits [Integer]
              #   # @param purchases [Integer]
              #   # @param withdrawals [Integer]
              #   #
              #   def initialize(card_transactions:, deposits:, purchases:, withdrawals:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end

            class MonthlyTotals < Unit::BaseModel
              # @!attribute card_transactions
              #
              #   @return [Integer]
              required :card_transactions, Integer, api_name: :cardTransactions

              # @!attribute deposits
              #
              #   @return [Integer]
              required :deposits, Integer

              # @!attribute purchases
              #
              #   @return [Integer]
              required :purchases, Integer

              # @!attribute withdrawals
              #
              #   @return [Integer]
              required :withdrawals, Integer

              # @!parse
              #   # @param card_transactions [Integer]
              #   # @param deposits [Integer]
              #   # @param purchases [Integer]
              #   # @param withdrawals [Integer]
              #   #
              #   def initialize(card_transactions:, deposits:, purchases:, withdrawals:, **) = super

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
              #   # @param daily_purchase [Integer, nil]
              #   # @param daily_withdrawal [Integer, nil]
              #   # @param monthly_purchase [Integer, nil]
              #   # @param monthly_withdrawal [Integer, nil]
              #   #
              #   def initialize(daily_purchase: nil, daily_withdrawal: nil, monthly_purchase: nil, monthly_withdrawal: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :limits
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            LIMITS = :limits
          end
        end
      end
    end
  end
end
