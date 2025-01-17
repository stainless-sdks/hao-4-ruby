# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::CounterpartyUpdateParams::Data]
      required :data, -> { Unit::Models::CounterpartyUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CounterpartyUpdateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CounterpartyUpdateParams::Data::Attributes,
      #   type: enum: Unit::Models::CounterpartyUpdateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::CounterpartyUpdateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::CounterpartyUpdateParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::CounterpartyUpdateParams::Data::Type]
        required :type, enum: -> { Unit::Models::CounterpartyUpdateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::CounterpartyUpdateParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   name: String,
        #   permissions: enum: Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions,
        #   plaid_processor_token: String,
        #   tags: -> { Unit::HashOf[String] === _1 },
        #   verify_name: Unit::BooleanModel
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute name
          #
          #   @return [String]
          optional :name, String

          # @!attribute permissions
          #
          #   @return [Symbol, Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions]
          optional :permissions,
                   enum: -> {
                     Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions
                   }

          # @!attribute plaid_processor_token
          #
          #   @return [String]
          optional :plaid_processor_token, String, api_name: :plaidProcessorToken

          # @!attribute tags
          #
          #   @return [Hash{Symbol=>String}]
          optional :tags, Unit::HashOf[String]

          # @!attribute verify_name
          #
          #   @return [Boolean]
          optional :verify_name, Unit::BooleanModel, api_name: :verifyName

          # @!parse
          #   # @param name [String]
          #   # @param permissions [String]
          #   # @param plaid_processor_token [String]
          #   # @param tags [Hash{Symbol=>String}]
          #   # @param verify_name [Boolean]
          #   #
          #   def initialize(name: nil, permissions: nil, plaid_processor_token: nil, tags: nil, verify_name: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case permissions
          # in :CreditOnly
          #   # ...
          # in :DebitOnly
          #   # ...
          # in :CreditAndDebit
          #   # ...
          # end
          # ```
          class Permissions < Unit::Enum
            CREDIT_ONLY = :CreditOnly
            DEBIT_ONLY = :DebitOnly
            CREDIT_AND_DEBIT = :CreditAndDebit

            finalize!
          end
        end

        # @example
        # ```ruby
        # case type
        # in :counterparty
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          COUNTERPARTY = :counterparty

          finalize!
        end
      end
    end
  end
end
