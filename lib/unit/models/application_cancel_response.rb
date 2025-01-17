# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # application_cancel_response => {
    #   data: Unit::Models::Application,
    #   included: -> { Unit::ArrayOf[Unit::Models::ApplicationCancelResponse::Included] === _1 }
    # }
    # ```
    class ApplicationCancelResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::Application]
      optional :data, -> { Unit::Models::Application }

      # @!attribute included
      #
      #   @return [Array<Unit::Models::ApplicationCancelResponse::Included>]
      optional :included, -> { Unit::ArrayOf[Unit::Models::ApplicationCancelResponse::Included] }

      # @!parse
      #   # @param data [Unit::Models::Application]
      #   # @param included [Array<Unit::Models::ApplicationCancelResponse::Included>]
      #   #
      #   def initialize(data: nil, included: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # included => {
      #   id: String,
      #   attributes: Unit::Models::ApplicationCancelResponse::Included::Attributes,
      #   type: enum: Unit::Models::ApplicationCancelResponse::Included::Type
      # }
      # ```
      class Included < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::ApplicationCancelResponse::Included::Attributes]
        required :attributes, -> { Unit::Models::ApplicationCancelResponse::Included::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ApplicationCancelResponse::Included::Type]
        required :type, enum: -> { Unit::Models::ApplicationCancelResponse::Included::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::ApplicationCancelResponse::Included::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   status: String,
        #   address: Unit::Models::ApplicationCancelResponse::Included::Attributes::Address,
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

          # @!attribute address
          #
          #   @return [Unit::Models::ApplicationCancelResponse::Included::Attributes::Address]
          optional :address, -> { Unit::Models::ApplicationCancelResponse::Included::Attributes::Address }

          # @!attribute back_document_id
          #
          #   @return [String]
          optional :back_document_id, String, api_name: :backDocumentId

          # @!attribute back_document_store_id
          #
          #   @return [String]
          optional :back_document_store_id, String, api_name: :backDocumentStoreId

          # @!attribute date_of_birth
          #
          #   @return [Date]
          optional :date_of_birth, Date, api_name: :dateOfBirth

          # @!attribute date_of_incorporation
          #
          #   @return [Date]
          optional :date_of_incorporation, Date, api_name: :dateOfIncorporation

          # @!attribute description
          #
          #   @return [String]
          optional :description, String

          # @!attribute document_type
          #
          #   @return [String]
          optional :document_type, String, api_name: :documentType

          # @!attribute ein
          #
          #   @return [String]
          optional :ein, String

          # @!attribute evaluation_id
          #
          #   @return [String]
          optional :evaluation_id, String, api_name: :evaluationId

          # @!attribute front_document_id
          #
          #   @return [String]
          optional :front_document_id, String, api_name: :frontDocumentId

          # @!attribute front_document_store_id
          #
          #   @return [String]
          optional :front_document_store_id, String, api_name: :frontDocumentStoreId

          # @!attribute matricula_consular
          #
          #   @return [String]
          optional :matricula_consular, String, api_name: :matriculaConsular

          # @!attribute name
          #
          #   @return [String]
          optional :name, String

          # @!attribute nationality
          #
          #   @return [String]
          optional :nationality, String

          # @!attribute passport
          #
          #   @return [String]
          optional :passport, String

          # @!attribute reason
          #
          #   @return [String]
          optional :reason, String

          # @!attribute reason_code
          #
          #   @return [String]
          optional :reason_code, String, api_name: :reasonCode

          # @!attribute ssn
          #
          #   @return [String]
          optional :ssn, String

          # @!attribute state_of_incorporation
          #
          #   @return [String]
          optional :state_of_incorporation, String, api_name: :stateOfIncorporation

          # @!parse
          #   # @param status [String]
          #   # @param address [Unit::Models::ApplicationCancelResponse::Included::Attributes::Address]
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
