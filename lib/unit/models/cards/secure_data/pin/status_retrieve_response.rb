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
            # @!attribute data
            #
            #   @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data]
            optional :data, -> { Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data }

            # @!parse
            #   # @param data [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data]
            #   #
            #   def initialize(data: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   attributes: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes,
            #   type: enum: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute attributes
              #
              #   @return [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes]
              optional :attributes,
                       -> { Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes }

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type]
              optional :type,
                       enum: -> {
                         Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Type
                       }

              # @!parse
              #   # @param attributes [Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes]
              #   # @param type [String]
              #   #
              #   def initialize(attributes: nil, type: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # attributes => {
              #   status: enum: Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status
              # }
              # ```
              class Attributes < Unit::BaseModel
                # @!attribute status
                #
                #   @return [Symbol, Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status]
                optional :status,
                         enum: -> {
                           Unit::Models::Cards::SecureData::Pin::StatusRetrieveResponse::Data::Attributes::Status
                         }

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
