# frozen_string_literal: true

module Unit
  module Models
    module Cards
      module SecureData
        module Pin
          # @example
          # ```ruby
          # status_retrieve_response => {
          #   data: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data
          # }
          # ```
          class StatusRetrieveResponse < Unit::BaseModel
            # @!attribute [r] data
            #
            #   @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data, nil]
            optional :data, -> { Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data }

            # @!parse
            #   # @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data]
            #   attr_writer :data

            # @!parse
            #   # @param data [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data]
            #   #
            #   def initialize(data: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   attributes: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes,
            #   type: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute [r] attributes
              #
              #   @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes, nil]
              optional :attributes,
                       -> { Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes }

              # @!parse
              #   # @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes]
              #   attr_writer :attributes

              # @!attribute [r] type
              #
              #   @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type, nil]
              optional :type,
                       enum: -> {
                         Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type]
              #   attr_writer :type

              # @!parse
              #   # @param attributes [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes]
              #   # @param type [String]
              #   #
              #   def initialize(attributes: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # attributes => {
              #   status: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status
              # }
              # ```
              class Attributes < Unit::BaseModel
                # @!attribute [r] status
                #
                #   @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status, nil]
                optional :status,
                         enum: -> {
                           Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status
                         }

                # @!parse
                #   # @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status]
                #   attr_writer :status

                # @!parse
                #   # @param status [String]
                #   #
                #   def initialize(status: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case status
                # in :Set
                #   # ...
                # in :NotSet
                #   # ...
                # end
                # ```
                class Status < Unit::Enum
                  SET = :Set
                  NOT_SET = :NotSet

                  finalize!
                end
              end

              # @example
              # ```ruby
              # case type
              # in :pinStatus
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                PIN_STATUS = :pinStatus

                finalize!
              end
            end
          end
        end
      end
    end
  end
end
