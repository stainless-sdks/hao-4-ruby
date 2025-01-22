# frozen_string_literal: true

module Unit
  module Models
    module Applications
      # @example
      # ```ruby
      # document_verify_response => {
      #   data: Unit::Models::Applications::DocumentVerifyResponse::Data
      # }
      # ```
      class DocumentVerifyResponse < Unit::BaseModel
        # @!attribute [r] data
        #
        #   @return [Unit::Models::Applications::DocumentVerifyResponse::Data, nil]
        optional :data, -> { Unit::Models::Applications::DocumentVerifyResponse::Data }

        # @!parse
        #   # @return [Unit::Models::Applications::DocumentVerifyResponse::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [Unit::Models::Applications::DocumentVerifyResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   id: String,
        #   attributes: Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes,
        #   type: Unit::Models::Applications::DocumentVerifyResponse::Data::Type
        # }
        # ```
        class Data < Unit::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute attributes
          #
          #   @return [Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes]
          required :attributes, -> { Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::Applications::DocumentVerifyResponse::Data::Type]
          required :type, enum: -> { Unit::Models::Applications::DocumentVerifyResponse::Data::Type }

          # @!parse
          #   # @param id [String]
          #   # @param attributes [Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(id:, attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   status: String,
          #   address: Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes::Address,
          #   back_document_id: String,
          #   back_document_store_id: String,
          #   date_of_birth: Date,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute status
            #
            #   @return [String]
            required :status, String

            # @!attribute [r] address
            #
            #   @return [Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes::Address, nil]
            optional :address,
                     -> {
                       Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes::Address
                     }

            # @!parse
            #   # @return [Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes::Address]
            #   attr_writer :address

            # @!attribute [r] back_document_id
            #
            #   @return [String, nil]
            optional :back_document_id, String, api_name: :backDocumentId

            # @!parse
            #   # @return [String]
            #   attr_writer :back_document_id

            # @!attribute [r] back_document_store_id
            #
            #   @return [String, nil]
            optional :back_document_store_id, String, api_name: :backDocumentStoreId

            # @!parse
            #   # @return [String]
            #   attr_writer :back_document_store_id

            # @!attribute [r] date_of_birth
            #
            #   @return [Date, nil]
            optional :date_of_birth, Date, api_name: :dateOfBirth

            # @!parse
            #   # @return [Date]
            #   attr_writer :date_of_birth

            # @!attribute [r] date_of_incorporation
            #
            #   @return [Date, nil]
            optional :date_of_incorporation, Date, api_name: :dateOfIncorporation

            # @!parse
            #   # @return [Date]
            #   attr_writer :date_of_incorporation

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] document_type
            #
            #   @return [String, nil]
            optional :document_type, String, api_name: :documentType

            # @!parse
            #   # @return [String]
            #   attr_writer :document_type

            # @!attribute [r] ein
            #
            #   @return [String, nil]
            optional :ein, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ein

            # @!attribute [r] evaluation_id
            #
            #   @return [String, nil]
            optional :evaluation_id, String, api_name: :evaluationId

            # @!parse
            #   # @return [String]
            #   attr_writer :evaluation_id

            # @!attribute [r] front_document_id
            #
            #   @return [String, nil]
            optional :front_document_id, String, api_name: :frontDocumentId

            # @!parse
            #   # @return [String]
            #   attr_writer :front_document_id

            # @!attribute [r] front_document_store_id
            #
            #   @return [String, nil]
            optional :front_document_store_id, String, api_name: :frontDocumentStoreId

            # @!parse
            #   # @return [String]
            #   attr_writer :front_document_store_id

            # @!attribute [r] matricula_consular
            #
            #   @return [String, nil]
            optional :matricula_consular, String, api_name: :matriculaConsular

            # @!parse
            #   # @return [String]
            #   attr_writer :matricula_consular

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] nationality
            #
            #   @return [String, nil]
            optional :nationality, String

            # @!parse
            #   # @return [String]
            #   attr_writer :nationality

            # @!attribute [r] passport
            #
            #   @return [String, nil]
            optional :passport, String

            # @!parse
            #   # @return [String]
            #   attr_writer :passport

            # @!attribute [r] reason
            #
            #   @return [String, nil]
            optional :reason, String

            # @!parse
            #   # @return [String]
            #   attr_writer :reason

            # @!attribute [r] reason_code
            #
            #   @return [String, nil]
            optional :reason_code, String, api_name: :reasonCode

            # @!parse
            #   # @return [String]
            #   attr_writer :reason_code

            # @!attribute [r] ssn
            #
            #   @return [String, nil]
            optional :ssn, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ssn

            # @!attribute [r] state_of_incorporation
            #
            #   @return [String, nil]
            optional :state_of_incorporation, String, api_name: :stateOfIncorporation

            # @!parse
            #   # @return [String]
            #   attr_writer :state_of_incorporation

            # @!parse
            #   # @param status [String]
            #   # @param address [Unit::Models::Applications::DocumentVerifyResponse::Data::Attributes::Address]
            #   # @param back_document_id [String]
            #   # @param back_document_store_id [String]
            #   # @param date_of_birth [String]
            #   # @param date_of_incorporation [String]
            #   # @param description [String]
            #   # @param document_type [String]
            #   # @param ein [String]
            #   # @param evaluation_id [String]
            #   # @param front_document_id [String]
            #   # @param front_document_store_id [String]
            #   # @param matricula_consular [String]
            #   # @param name [String]
            #   # @param nationality [String]
            #   # @param passport [String]
            #   # @param reason [String]
            #   # @param reason_code [String]
            #   # @param ssn [String]
            #   # @param state_of_incorporation [String]
            #   #
            #   def initialize(
            #     status:,
            #     address: nil,
            #     back_document_id: nil,
            #     back_document_store_id: nil,
            #     date_of_birth: nil,
            #     date_of_incorporation: nil,
            #     description: nil,
            #     document_type: nil,
            #     ein: nil,
            #     evaluation_id: nil,
            #     front_document_id: nil,
            #     front_document_store_id: nil,
            #     matricula_consular: nil,
            #     name: nil,
            #     nationality: nil,
            #     passport: nil,
            #     reason: nil,
            #     reason_code: nil,
            #     ssn: nil,
            #     state_of_incorporation: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
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
              optional :street2, String, nil?: true

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
          # ```ruby
          # case type
          # in :document
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            DOCUMENT = :document

            finalize!
          end
        end
      end
    end
  end
end
