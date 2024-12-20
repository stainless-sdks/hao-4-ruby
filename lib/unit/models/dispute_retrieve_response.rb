# frozen_string_literal: true

module Unit
  module Models
    class DisputeRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::DisputeRetrieveResponse::Data]
      optional :data, -> { Unit::Models::DisputeRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::DisputeRetrieveResponse::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute relationships
        #
        #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships]
        required :relationships, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Type]
        required :type, enum: -> { Unit::Models::DisputeRetrieveResponse::Data::Type }

        # @!attribute attributes
        #
        #   @return [Unit::Models::DisputeRetrieveResponse::Data::Attributes]
        optional :attributes, -> { Unit::Models::DisputeRetrieveResponse::Data::Attributes }

        # @!parse
        #   # @param id [String]
        #   # @param relationships [Unit::Models::DisputeRetrieveResponse::Data::Relationships]
        #   # @param type [String]
        #   # @param attributes [Unit::Models::DisputeRetrieveResponse::Data::Attributes, nil]
        #   #
        #   def initialize(id:, relationships:, type:, attributes: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Relationships < Unit::BaseModel
          # @!attribute account
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account]
          required :account, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account }

          # @!attribute customer
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer]
          required :customer, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer }

          # @!attribute transaction
          #
          #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction]
          required :transaction,
                   -> {
                     Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction
                   }

          # @!parse
          #   # @param account [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account]
          #   # @param customer [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer]
          #   # @param transaction [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction]
          #   #
          #   def initialize(account:, customer:, transaction:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          class Account < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data]
            required :data, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data]
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
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Account::Data::Type
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
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data]
            required :data, -> { Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data]
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
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Customer::Data::Type
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

          class Transaction < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data]
            required :data,
                     -> {
                       Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data]
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
              #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::DisputeRetrieveResponse::Data::Relationships::Transaction::Data::Type
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
              # in :transaction
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                TRANSACTION = :transaction

                finalize!
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :dispute
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          DISPUTE = :dispute

          finalize!
        end

        class Attributes < Unit::BaseModel
          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute external_id
          #
          #   @return [String]
          required :external_id, String, api_name: :externalId

          # @!attribute source
          #
          #   @return [Symbol, Unit::Models::DisputeRetrieveResponse::Data::Attributes::Source]
          required :source, enum: -> { Unit::Models::DisputeRetrieveResponse::Data::Attributes::Source }

          # @!attribute status
          #
          #   @return [String]
          required :status, String

          # @!attribute decision_reason
          #
          #   @return [String]
          optional :decision_reason, String, api_name: :decisionReason

          # @!attribute link
          #
          #   @return [String]
          optional :link, String

          # @!attribute status_history
          #
          #   @return [Array<Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory>]
          optional :status_history,
                   Unit::ArrayOf[-> {
                     Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory
                   }],
                   api_name: :statusHistory

          # @!parse
          #   # @param amount [Integer]
          #   # @param created_at [String]
          #   # @param description [String]
          #   # @param external_id [String]
          #   # @param source [String]
          #   # @param status [String]
          #   # @param decision_reason [String, nil]
          #   # @param link [String, nil]
          #   # @param status_history [Array<Unit::Models::DisputeRetrieveResponse::Data::Attributes::StatusHistory>, nil]
          #   #
          #   def initialize(
          #     amount:,
          #     created_at:,
          #     description:,
          #     external_id:,
          #     source:,
          #     status:,
          #     decision_reason: nil,
          #     link: nil,
          #     status_history: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :DebitCard
          #   # ...
          # in :ACH
          #   # ...
          # end
          # ```
          class Source < Unit::Enum
            DEBIT_CARD = :DebitCard
            ACH = :ACH

            finalize!
          end

          class StatusHistory < Unit::BaseModel
            # @!attribute type
            #
            #   @return [String]
            optional :type, String

            # @!attribute updated_at
            #
            #   @return [Time]
            optional :updated_at, Time, api_name: :updatedAt

            # @!parse
            #   # @param type [String, nil]
            #   # @param updated_at [String, nil]
            #   #
            #   def initialize(type: nil, updated_at: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end
        end
      end
    end
  end
end
