# frozen_string_literal: true

module Unit
  module Models
    class CounterpartyUpdateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute data
      #
      #   @return [Unit::Models::CounterpartyUpdateParams::Data]
      required :data, -> { Unit::Models::CounterpartyUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::CounterpartyUpdateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data:, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::CounterpartyUpdateParams::Data::Attributes,
      #   type: Unit::Models::CounterpartyUpdateParams::Data::Type
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
        #   permissions: Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions,
        #   plaid_processor_token: String,
        #   tags: -> { Unit::HashOf[String] === _1 },
        #   verify_name: Unit::BooleanModel
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] name
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] permissions
          #
          #   @return [Symbol, Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions, nil]
          optional :permissions,
                   enum: -> {
                     Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions
                   }

          # @!parse
          #   # @return [Symbol, Unit::Models::CounterpartyUpdateParams::Data::Attributes::Permissions]
          #   attr_writer :permissions

          # @!attribute [r] plaid_processor_token
          #
          #   @return [String, nil]
          optional :plaid_processor_token, String, api_name: :plaidProcessorToken

          # @!parse
          #   # @return [String]
          #   attr_writer :plaid_processor_token

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!attribute [r] verify_name
          #
          #   @return [Boolean, nil]
          optional :verify_name, Unit::BooleanModel, api_name: :verifyName

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :verify_name

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
