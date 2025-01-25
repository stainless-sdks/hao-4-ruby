# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormCreateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::ApplicationFormCreateParams::Data, nil]
      optional :data, -> { Unit::Models::ApplicationFormCreateParams::Data }

      # @!parse
      #   # @return [Unit::Models::ApplicationFormCreateParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::ApplicationFormCreateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   type: Unit::Models::ApplicationFormCreateParams::Data::Type,
      #   attributes: Unit::Models::ApplicationFormCreateParams::Data::Attributes,
      #   relationships: Unit::Models::ApplicationFormCreateParams::Data::Relationships
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::ApplicationFormCreateParams::Data::Type }

        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] relationships
        #
        #   @return [Unit::Models::ApplicationFormCreateParams::Data::Relationships, nil]
        optional :relationships, -> { Unit::Models::ApplicationFormCreateParams::Data::Relationships }

        # @!parse
        #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Relationships]
        #   attr_writer :relationships

        # @!parse
        #   # @param type [String]
        #   # @param attributes [Unit::Models::ApplicationFormCreateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::ApplicationFormCreateParams::Data::Relationships]
        #   #
        #   def initialize(type:, attributes: nil, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :applicationForm
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          APPLICATION_FORM = :applicationForm

          finalize!
        end

        # @example
        # ```ruby
        # attributes => {
        #   allowed_application_types: -> { Unit::ArrayOf[enum: Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType] === _1 },
        #   applicant_details: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails,
        #   hide_application_progress_tracker: Unit::BooleanModel,
        #   lang: Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang,
        #   require_id_verification: Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] allowed_application_types
          #
          #   @return [Array<Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType>]
          optional :allowed_application_types,
                   -> {
                     Unit::ArrayOf[enum: Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType]
                   },
                   api_name: :allowedApplicationTypes

          # @!parse
          #   # @return [Array<Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType>]
          #   attr_writer :allowed_application_types

          # @!attribute [r] applicant_details
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails, nil]
          optional :applicant_details,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails },
                   api_name: :applicantDetails

          # @!parse
          #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails]
          #   attr_writer :applicant_details

          # @!attribute [r] hide_application_progress_tracker
          #
          #   @return [Boolean, nil]
          optional :hide_application_progress_tracker,
                   Unit::BooleanModel,
                   api_name: :hideApplicationProgressTracker

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :hide_application_progress_tracker

          # @!attribute [r] lang
          #
          #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang, nil]
          optional :lang, enum: -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang }

          # @!parse
          #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang]
          #   attr_writer :lang

          # @!attribute [r] require_id_verification
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification, nil]
          optional :require_id_verification,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification },
                   api_name: :requireIdVerification

          # @!parse
          #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification]
          #   attr_writer :require_id_verification

          # @!attribute [r] settings_override
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride, nil]
          optional :settings_override,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride },
                   api_name: :settingsOverride

          # @!parse
          #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride]
          #   attr_writer :settings_override

          # @!attribute [r] tags
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :tags

          # @!parse
          #   # @param allowed_application_types [Array<String>]
          #   # @param applicant_details [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails]
          #   # @param hide_application_progress_tracker [Boolean]
          #   # @param lang [String]
          #   # @param require_id_verification [Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification]
          #   # @param settings_override [Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride]
          #   # @param tags [Hash{Symbol=>String}]
          #   #
          #   def initialize(
          #     allowed_application_types: nil,
          #     applicant_details: nil,
          #     hide_application_progress_tracker: nil,
          #     lang: nil,
          #     require_id_verification: nil,
          #     settings_override: nil,
          #     tags: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case allowed_application_type
          # in :Individual
          #   # ...
          # in :Business
          #   # ...
          # in :SoleProprietorship
          #   # ...
          # end
          # ```
          class AllowedApplicationType < Unit::Enum
            INDIVIDUAL = :Individual
            BUSINESS = :Business
            SOLE_PROPRIETORSHIP = :SoleProprietorship

            finalize!
          end

          # @example
          # ```ruby
          # applicant_details => {
          #   address: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address,
          #   application_type: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType,
          #   beneficial_owners: -> { Unit::ArrayOf[Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner] === _1 },
          #   business_vertical: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical,
          #   contact: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact,
          #   **_
          # }
          # ```
          class ApplicantDetails < Unit::BaseModel
            # @!attribute [r] address
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address, nil]
            optional :address,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address }

            # @!parse
            #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address]
            #   attr_writer :address

            # @!attribute [r] application_type
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType, nil]
            optional :application_type,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType
                     },
                     api_name: :applicationType

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType]
            #   attr_writer :application_type

            # @!attribute [r] beneficial_owners
            #
            #   @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner>]
            optional :beneficial_owners,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner]
                     },
                     api_name: :beneficialOwners

            # @!parse
            #   # @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner>]
            #   attr_writer :beneficial_owners

            # @!attribute [r] business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical, nil]
            optional :business_vertical,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical
                     },
                     api_name: :businessVertical

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical]
            #   attr_writer :business_vertical

            # @!attribute [r] contact
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact, nil]
            optional :contact,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact }

            # @!parse
            #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact]
            #   attr_writer :contact

            # @!attribute [r] date_of_birth
            #
            #   @return [Date, nil]
            optional :date_of_birth, Date, api_name: :dateOfBirth

            # @!parse
            #   # @return [Date]
            #   attr_writer :date_of_birth

            # @!attribute [r] dba
            #
            #   @return [String, nil]
            optional :dba, String

            # @!parse
            #   # @return [String]
            #   attr_writer :dba

            # @!attribute [r] ein
            #
            #   @return [String, nil]
            optional :ein, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ein

            # @!attribute [r] email
            #
            #   @return [String, nil]
            optional :email, String

            # @!parse
            #   # @return [String]
            #   attr_writer :email

            # @!attribute [r] entity_type
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::EntityType, nil]
            optional :entity_type,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::EntityType
                     },
                     api_name: :entityType

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::EntityType]
            #   attr_writer :entity_type

            # @!attribute [r] full_name
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName, nil]
            optional :full_name,
                     -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName
                     },
                     api_name: :fullName

            # @!parse
            #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName]
            #   attr_writer :full_name

            # @!attribute [r] industry
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Industry, nil]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Industry
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Industry]
            #   attr_writer :industry

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

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

            # @!attribute [r] occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Occupation, nil]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Occupation
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Occupation]
            #   attr_writer :occupation

            # @!attribute [r] officer
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer, nil]
            optional :officer,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer }

            # @!parse
            #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer]
            #   attr_writer :officer

            # @!attribute [r] passport
            #
            #   @return [String, nil]
            optional :passport, String

            # @!parse
            #   # @return [String]
            #   attr_writer :passport

            # @!attribute [r] phone
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone, nil]
            optional :phone,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone }

            # @!parse
            #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone]
            #   attr_writer :phone

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

            # @!attribute [r] website
            #
            #   @return [String, nil]
            optional :website, String

            # @!parse
            #   # @return [String]
            #   attr_writer :website

            # @!parse
            #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address]
            #   # @param application_type [String]
            #   # @param beneficial_owners [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner>]
            #   # @param business_vertical [String]
            #   # @param contact [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact]
            #   # @param date_of_birth [String]
            #   # @param dba [String]
            #   # @param ein [String]
            #   # @param email [String]
            #   # @param entity_type [String]
            #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName]
            #   # @param industry [String]
            #   # @param jwt_subject [String, nil]
            #   # @param name [String]
            #   # @param nationality [String]
            #   # @param occupation [String]
            #   # @param officer [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer]
            #   # @param passport [String]
            #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone]
            #   # @param ssn [String]
            #   # @param state_of_incorporation [String]
            #   # @param website [String]
            #   #
            #   def initialize(
            #     address: nil,
            #     application_type: nil,
            #     beneficial_owners: nil,
            #     business_vertical: nil,
            #     contact: nil,
            #     date_of_birth: nil,
            #     dba: nil,
            #     ein: nil,
            #     email: nil,
            #     entity_type: nil,
            #     full_name: nil,
            #     industry: nil,
            #     jwt_subject: nil,
            #     name: nil,
            #     nationality: nil,
            #     occupation: nil,
            #     officer: nil,
            #     passport: nil,
            #     phone: nil,
            #     ssn: nil,
            #     state_of_incorporation: nil,
            #     website: nil,
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

            # @example
            # ```ruby
            # case application_type
            # in :Individual
            #   # ...
            # in :Business
            #   # ...
            # in :SoleProprietorship
            #   # ...
            # end
            # ```
            class ApplicationType < Unit::Enum
              INDIVIDUAL = :Individual
              BUSINESS = :Business
              SOLE_PROPRIETORSHIP = :SoleProprietorship

              finalize!
            end

            # @example
            # ```ruby
            # beneficial_owner => {
            #   address: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::FullName,
            #   phone: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Phone,
            #   **_
            # }
            # ```
            class BeneficialOwner < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Address]
              required :address,
                       -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Address }

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
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Phone }

              # @!attribute [r] annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::AnnualIncome, nil]
              optional :annual_income,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::AnnualIncome
                       },
                       api_name: :annualIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::AnnualIncome]
              #   attr_writer :annual_income

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams]
              #   attr_writer :evaluation_params

              # @!attribute [r] matricula_consular
              #
              #   @return [String, nil]
              optional :matricula_consular, String, api_name: :matriculaConsular

              # @!parse
              #   # @return [String]
              #   attr_writer :matricula_consular

              # @!attribute [r] nationality
              #
              #   @return [String, nil]
              optional :nationality, String

              # @!parse
              #   # @return [String]
              #   attr_writer :nationality

              # @!attribute [r] occupation
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Occupation, nil]
              optional :occupation,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Occupation
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Occupation]
              #   attr_writer :occupation

              # @!attribute [r] passport
              #
              #   @return [String, nil]
              optional :passport, String

              # @!parse
              #   # @return [String]
              #   attr_writer :passport

              # @!attribute [r] percentage
              #
              #   @return [Integer, nil]
              optional :percentage, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :percentage

              # @!attribute [r] source_of_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::SourceOfIncome, nil]
              optional :source_of_income,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::SourceOfIncome
                       },
                       api_name: :sourceOfIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::SourceOfIncome]
              #   attr_writer :source_of_income

              # @!attribute [r] ssn
              #
              #   @return [String, nil]
              optional :ssn, String

              # @!parse
              #   # @return [String]
              #   attr_writer :ssn

              # @!parse
              #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::FullName]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Phone]
              #   # @param annual_income [String]
              #   # @param evaluation_params [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams]
              #   # @param matricula_consular [String]
              #   # @param nationality [String]
              #   # @param occupation [String]
              #   # @param passport [String]
              #   # @param percentage [Integer]
              #   # @param source_of_income [String]
              #   # @param ssn [String]
              #   #
              #   def initialize(
              #     address:,
              #     date_of_birth:,
              #     email:,
              #     full_name:,
              #     phone:,
              #     annual_income: nil,
              #     evaluation_params: nil,
              #     matricula_consular: nil,
              #     nationality: nil,
              #     occupation: nil,
              #     passport: nil,
              #     percentage: nil,
              #     source_of_income: nil,
              #     ssn: nil,
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

              # @example
              # ```ruby
              # full_name => {
              #   first: String,
              #   last: String
              # }
              # ```
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

              # @example
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
              # ```ruby
              # case annual_income
              # in :UpTo10k
              #   # ...
              # in :Between10kAnd25k
              #   # ...
              # in :Between25kAnd50k
              #   # ...
              # in :Between50kAnd100k
              #   # ...
              # in :Between100kAnd250k
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class AnnualIncome < Unit::Enum
                UP_TO10K = :UpTo10k
                BETWEEN10K_AND25K = :Between10kAnd25k
                BETWEEN25K_AND50K = :Between25kAnd50k
                BETWEEN50K_AND100K = :Between50kAnd100k
                BETWEEN100K_AND250K = :Between100kAnd250k
                OVER250K = :Over250k

                finalize!
              end

              # @example
              # ```ruby
              # evaluation_params => {
              #   require_id_verification: Unit::BooleanModel,
              #   use_selfie_verification: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification
              # }
              # ```
              class EvaluationParams < Unit::BaseModel
                # @!attribute [r] require_id_verification
                #
                #   @return [Boolean, nil]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :require_id_verification

                # @!attribute [r] use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification]
                #   attr_writer :use_selfie_verification

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
                #   #
                #   def initialize(require_id_verification: nil, use_selfie_verification: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case use_selfie_verification
                # in :Never
                #   # ...
                # in :ReplaceIdentification
                #   # ...
                # in :Always
                #   # ...
                # end
                # ```
                class UseSelfieVerification < Unit::Enum
                  NEVER = :Never
                  REPLACE_IDENTIFICATION = :ReplaceIdentification
                  ALWAYS = :Always

                  finalize!
                end
              end

              # @example
              # ```ruby
              # case occupation
              # in :ArchitectOrEngineer
              #   # ...
              # in :BusinessAnalystAccountantOrFinancialAdvisor
              #   # ...
              # in :CommunityAndSocialServicesWorker
              #   # ...
              # in :ConstructionMechanicOrMaintenanceWorker
              #   # ...
              # in :Doctor
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Occupation < Unit::Enum
                ARCHITECT_OR_ENGINEER = :ArchitectOrEngineer
                BUSINESS_ANALYST_ACCOUNTANT_OR_FINANCIAL_ADVISOR = :BusinessAnalystAccountantOrFinancialAdvisor
                COMMUNITY_AND_SOCIAL_SERVICES_WORKER = :CommunityAndSocialServicesWorker
                CONSTRUCTION_MECHANIC_OR_MAINTENANCE_WORKER = :ConstructionMechanicOrMaintenanceWorker
                DOCTOR = :Doctor
                EDUCATOR = :Educator
                ENTERTAINMENT_SPORTS_ARTS_OR_MEDIA = :EntertainmentSportsArtsOrMedia
                EXECUTIVE_OR_MANAGER = :ExecutiveOrManager
                FARMER_FISHERMAN_FORESTER = :FarmerFishermanForester
                FOOD_SERVICE_WORKER = :FoodServiceWorker
                GIG_WORKER = :GigWorker
                HOSPITALITY_OFFICE_OR_ADMINISTRATIVE_SUPPORT_WORKER = :HospitalityOfficeOrAdministrativeSupportWorker
                HOUSEHOLD_MANAGER = :HouseholdManager
                JANITOR_HOUSEKEEPER_LANDSCAPER = :JanitorHousekeeperLandscaper
                LAWYER = :Lawyer
                MANUFACTURING_OR_PRODUCTION_WORKER = :ManufacturingOrProductionWorker
                MILITARY_OR_PUBLIC_SAFETY = :MilitaryOrPublicSafety
                NURSE_HEALTHCARE_TECHNICIAN_OR_HEALTHCARE_SUPPORT = :NurseHealthcareTechnicianOrHealthcareSupport
                PERSONAL_CARE_OR_SERVICE_WORKER = :PersonalCareOrServiceWorker
                PILOT_DRIVER_OPERATOR = :PilotDriverOperator
                SALES_REPRESENTATIVE_BROKER_AGENT = :SalesRepresentativeBrokerAgent
                SCIENTIST_OR_TECHNOLOGIST = :ScientistOrTechnologist
                STUDENT = :Student

                finalize!
              end

              # @example
              # ```ruby
              # case source_of_income
              # in :EmploymentOrPayrollIncome
              #   # ...
              # in :PartTimeOrContractorIncome
              #   # ...
              # in :InheritancesAndGifts
              #   # ...
              # in :PersonalInvestments
              #   # ...
              # in :BusinessOwnershipInterests
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class SourceOfIncome < Unit::Enum
                EMPLOYMENT_OR_PAYROLL_INCOME = :EmploymentOrPayrollIncome
                PART_TIME_OR_CONTRACTOR_INCOME = :PartTimeOrContractorIncome
                INHERITANCES_AND_GIFTS = :InheritancesAndGifts
                PERSONAL_INVESTMENTS = :PersonalInvestments
                BUSINESS_OWNERSHIP_INTERESTS = :BusinessOwnershipInterests
                GOVERNMENT_BENEFITS = :GovernmentBenefits

                finalize!
              end
            end

            # @example
            # ```ruby
            # case business_vertical
            # in :AdultEntertainmentDatingOrEscortServices
            #   # ...
            # in :AgricultureForestryFishingOrHunting
            #   # ...
            # in :ArtsEntertainmentAndRecreation
            #   # ...
            # in :BusinessSupportOrBuildingServices
            #   # ...
            # in :Cannabis
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class BusinessVertical < Unit::Enum
              ADULT_ENTERTAINMENT_DATING_OR_ESCORT_SERVICES = :AdultEntertainmentDatingOrEscortServices
              AGRICULTURE_FORESTRY_FISHING_OR_HUNTING = :AgricultureForestryFishingOrHunting
              ARTS_ENTERTAINMENT_AND_RECREATION = :ArtsEntertainmentAndRecreation
              BUSINESS_SUPPORT_OR_BUILDING_SERVICES = :BusinessSupportOrBuildingServices
              CANNABIS = :Cannabis
              CONSTRUCTION = :Construction
              DIRECT_MARKETING_OR_TELEMARKETING = :DirectMarketingOrTelemarketing
              EDUCATIONAL_SERVICES = :EducationalServices
              FINANCIAL_SERVICES_CRYPTOCURRENCY = :FinancialServicesCryptocurrency
              FINANCIAL_SERVICES_DEBIT_COLLECTION_OR_CONSOLIDATION = :FinancialServicesDebitCollectionOrConsolidation
              FINANCIAL_SERVICES_MONEY_SERVICES_BUSINESS_OR_CURRENCY_EXCHANGE = :FinancialServicesMoneyServicesBusinessOrCurrencyExchange
              FINANCIAL_SERVICES_OTHER = :FinancialServicesOther
              FINANCIAL_SERVICES_PAYDAY_LENDING = :FinancialServicesPaydayLending
              GAMING_OR_GAMBLING = :GamingOrGambling
              HEALTH_CARE_AND_SOCIAL_ASSISTANCE = :HealthCareAndSocialAssistance
              HOSPITALITY_ACCOMMODATION_OR_FOOD_SERVICES = :HospitalityAccommodationOrFoodServices
              LEGAL_ACCOUNTING_CONSULTING_OR_COMPUTER_PROGRAMMING = :LegalAccountingConsultingOrComputerProgramming
              MANUFACTURING = :Manufacturing
              MINING = :Mining
              NUTRACEUTICALS = :Nutraceuticals
              PERSONAL_CARE_SERVICES = :PersonalCareServices
              PUBLIC_ADMINISTRATION = :PublicAdministration
              REAL_ESTATE = :RealEstate
              RELIGIOUS_CIVIC_AND_SOCIAL_ORGANIZATIONS = :ReligiousCivicAndSocialOrganizations
              REPAIR_AND_MAINTENANCE = :RepairAndMaintenance
              RETAIL_TRADE = :RetailTrade
              TECHNOLOGY_MEDIA_OR_TELECOM = :TechnologyMediaOrTelecom
              TRANSPORTATION_OR_WAREHOUSING = :TransportationOrWarehousing
              UTILITIES = :Utilities
              WHOLESALE_TRADE = :WholesaleTrade

              finalize!
            end

            # @example
            # ```ruby
            # contact => {
            #   email: String,
            #   full_name: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::FullName,
            #   phone: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::Phone,
            #   jwt_subject: String
            # }
            # ```
            class Contact < Unit::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute full_name
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::FullName]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::Phone]
              #   # @param jwt_subject [String, nil]
              #   #
              #   def initialize(email:, full_name:, phone:, jwt_subject: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # full_name => {
              #   first: String,
              #   last: String
              # }
              # ```
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

              # @example
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
            # ```ruby
            # case entity_type
            # in :Corporation
            #   # ...
            # in :LLC
            #   # ...
            # in :Partnership
            #   # ...
            # in :PubliclyTradedCorporation
            #   # ...
            # in :PrivatelyHeldCorporation
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class EntityType < Unit::Enum
              CORPORATION = :Corporation
              LLC = :LLC
              PARTNERSHIP = :Partnership
              PUBLICLY_TRADED_CORPORATION = :PubliclyTradedCorporation
              PRIVATELY_HELD_CORPORATION = :PrivatelyHeldCorporation
              NOT_FOR_PROFIT_ORGANIZATION = :NotForProfitOrganization

              finalize!
            end

            # @example
            # ```ruby
            # full_name => {
            #   first: String,
            #   last: String
            # }
            # ```
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

            # @example
            # ```ruby
            # case industry
            # in :Retail
            #   # ...
            # in :Wholesale
            #   # ...
            # in :Restaurants
            #   # ...
            # in :Hospitals
            #   # ...
            # in :Construction
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Industry < Unit::Enum
              RETAIL = :Retail
              WHOLESALE = :Wholesale
              RESTAURANTS = :Restaurants
              HOSPITALS = :Hospitals
              CONSTRUCTION = :Construction
              INSURANCE = :Insurance
              UNIONS = :Unions
              REAL_ESTATE = :RealEstate
              FREELANCE_PROFESSIONAL = :FreelanceProfessional
              OTHER_PROFESSIONAL_SERVICES = :OtherProfessionalServices
              ONLINE_RETAILER = :OnlineRetailer
              OTHER_EDUCATION_SERVICES = :OtherEducationServices

              finalize!
            end

            # @example
            # ```ruby
            # case occupation
            # in :ArchitectOrEngineer
            #   # ...
            # in :BusinessAnalystAccountantOrFinancialAdvisor
            #   # ...
            # in :CommunityAndSocialServicesWorker
            #   # ...
            # in :ConstructionMechanicOrMaintenanceWorker
            #   # ...
            # in :Doctor
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Occupation < Unit::Enum
              ARCHITECT_OR_ENGINEER = :ArchitectOrEngineer
              BUSINESS_ANALYST_ACCOUNTANT_OR_FINANCIAL_ADVISOR = :BusinessAnalystAccountantOrFinancialAdvisor
              COMMUNITY_AND_SOCIAL_SERVICES_WORKER = :CommunityAndSocialServicesWorker
              CONSTRUCTION_MECHANIC_OR_MAINTENANCE_WORKER = :ConstructionMechanicOrMaintenanceWorker
              DOCTOR = :Doctor
              EDUCATOR = :Educator
              ENTERTAINMENT_SPORTS_ARTS_OR_MEDIA = :EntertainmentSportsArtsOrMedia
              EXECUTIVE_OR_MANAGER = :ExecutiveOrManager
              FARMER_FISHERMAN_FORESTER = :FarmerFishermanForester
              FOOD_SERVICE_WORKER = :FoodServiceWorker
              GIG_WORKER = :GigWorker
              HOSPITALITY_OFFICE_OR_ADMINISTRATIVE_SUPPORT_WORKER = :HospitalityOfficeOrAdministrativeSupportWorker
              HOUSEHOLD_MANAGER = :HouseholdManager
              JANITOR_HOUSEKEEPER_LANDSCAPER = :JanitorHousekeeperLandscaper
              LAWYER = :Lawyer
              MANUFACTURING_OR_PRODUCTION_WORKER = :ManufacturingOrProductionWorker
              MILITARY_OR_PUBLIC_SAFETY = :MilitaryOrPublicSafety
              NURSE_HEALTHCARE_TECHNICIAN_OR_HEALTHCARE_SUPPORT = :NurseHealthcareTechnicianOrHealthcareSupport
              PERSONAL_CARE_OR_SERVICE_WORKER = :PersonalCareOrServiceWorker
              PILOT_DRIVER_OPERATOR = :PilotDriverOperator
              SALES_REPRESENTATIVE_BROKER_AGENT = :SalesRepresentativeBrokerAgent
              SCIENTIST_OR_TECHNOLOGIST = :ScientistOrTechnologist
              STUDENT = :Student

              finalize!
            end

            # @example
            # ```ruby
            # officer => {
            #   address: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::FullName,
            #   occupation: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Occupation,
            #   **_
            # }
            # ```
            class Officer < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Address]
              required :address,
                       -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Address }

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
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::FullName
                       },
                       api_name: :fullName

              # @!attribute occupation
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Occupation]
              required :occupation,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Occupation
                       }

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Phone }

              # @!attribute [r] annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::AnnualIncome, nil]
              optional :annual_income,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::AnnualIncome
                       },
                       api_name: :annualIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::AnnualIncome]
              #   attr_writer :annual_income

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams]
              #   attr_writer :evaluation_params

              # @!attribute [r] matricula_consular
              #
              #   @return [String, nil]
              optional :matricula_consular, String, api_name: :matriculaConsular

              # @!parse
              #   # @return [String]
              #   attr_writer :matricula_consular

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

              # @!attribute [r] source_of_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::SourceOfIncome, nil]
              optional :source_of_income,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::SourceOfIncome
                       },
                       api_name: :sourceOfIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::SourceOfIncome]
              #   attr_writer :source_of_income

              # @!attribute [r] ssn
              #
              #   @return [String, nil]
              optional :ssn, String

              # @!parse
              #   # @return [String]
              #   attr_writer :ssn

              # @!attribute [r] title
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Title, nil]
              optional :title,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Title
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Title]
              #   attr_writer :title

              # @!parse
              #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::FullName]
              #   # @param occupation [String]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Phone]
              #   # @param annual_income [String]
              #   # @param evaluation_params [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams]
              #   # @param matricula_consular [String]
              #   # @param nationality [String]
              #   # @param passport [String]
              #   # @param source_of_income [String]
              #   # @param ssn [String]
              #   # @param title [String]
              #   #
              #   def initialize(
              #     address:,
              #     date_of_birth:,
              #     email:,
              #     full_name:,
              #     occupation:,
              #     phone:,
              #     annual_income: nil,
              #     evaluation_params: nil,
              #     matricula_consular: nil,
              #     nationality: nil,
              #     passport: nil,
              #     source_of_income: nil,
              #     ssn: nil,
              #     title: nil,
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

              # @example
              # ```ruby
              # full_name => {
              #   first: String,
              #   last: String
              # }
              # ```
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

              # @example
              # ```ruby
              # case occupation
              # in :ArchitectOrEngineer
              #   # ...
              # in :BusinessAnalystAccountantOrFinancialAdvisor
              #   # ...
              # in :CommunityAndSocialServicesWorker
              #   # ...
              # in :ConstructionMechanicOrMaintenanceWorker
              #   # ...
              # in :Doctor
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Occupation < Unit::Enum
                ARCHITECT_OR_ENGINEER = :ArchitectOrEngineer
                BUSINESS_ANALYST_ACCOUNTANT_OR_FINANCIAL_ADVISOR = :BusinessAnalystAccountantOrFinancialAdvisor
                COMMUNITY_AND_SOCIAL_SERVICES_WORKER = :CommunityAndSocialServicesWorker
                CONSTRUCTION_MECHANIC_OR_MAINTENANCE_WORKER = :ConstructionMechanicOrMaintenanceWorker
                DOCTOR = :Doctor
                EDUCATOR = :Educator
                ENTERTAINMENT_SPORTS_ARTS_OR_MEDIA = :EntertainmentSportsArtsOrMedia
                EXECUTIVE_OR_MANAGER = :ExecutiveOrManager
                FARMER_FISHERMAN_FORESTER = :FarmerFishermanForester
                FOOD_SERVICE_WORKER = :FoodServiceWorker
                GIG_WORKER = :GigWorker
                HOSPITALITY_OFFICE_OR_ADMINISTRATIVE_SUPPORT_WORKER = :HospitalityOfficeOrAdministrativeSupportWorker
                HOUSEHOLD_MANAGER = :HouseholdManager
                JANITOR_HOUSEKEEPER_LANDSCAPER = :JanitorHousekeeperLandscaper
                LAWYER = :Lawyer
                MANUFACTURING_OR_PRODUCTION_WORKER = :ManufacturingOrProductionWorker
                MILITARY_OR_PUBLIC_SAFETY = :MilitaryOrPublicSafety
                NURSE_HEALTHCARE_TECHNICIAN_OR_HEALTHCARE_SUPPORT = :NurseHealthcareTechnicianOrHealthcareSupport
                PERSONAL_CARE_OR_SERVICE_WORKER = :PersonalCareOrServiceWorker
                PILOT_DRIVER_OPERATOR = :PilotDriverOperator
                SALES_REPRESENTATIVE_BROKER_AGENT = :SalesRepresentativeBrokerAgent
                SCIENTIST_OR_TECHNOLOGIST = :ScientistOrTechnologist
                STUDENT = :Student

                finalize!
              end

              # @example
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
              # ```ruby
              # case annual_income
              # in :UpTo10k
              #   # ...
              # in :Between10kAnd25k
              #   # ...
              # in :Between25kAnd50k
              #   # ...
              # in :Between50kAnd100k
              #   # ...
              # in :Between100kAnd250k
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class AnnualIncome < Unit::Enum
                UP_TO10K = :UpTo10k
                BETWEEN10K_AND25K = :Between10kAnd25k
                BETWEEN25K_AND50K = :Between25kAnd50k
                BETWEEN50K_AND100K = :Between50kAnd100k
                BETWEEN100K_AND250K = :Between100kAnd250k
                OVER250K = :Over250k

                finalize!
              end

              # @example
              # ```ruby
              # evaluation_params => {
              #   require_id_verification: Unit::BooleanModel,
              #   use_selfie_verification: Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification
              # }
              # ```
              class EvaluationParams < Unit::BaseModel
                # @!attribute [r] require_id_verification
                #
                #   @return [Boolean, nil]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!parse
                #   # @return [Boolean]
                #   attr_writer :require_id_verification

                # @!attribute [r] use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification]
                #   attr_writer :use_selfie_verification

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
                #   #
                #   def initialize(require_id_verification: nil, use_selfie_verification: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                # ```ruby
                # case use_selfie_verification
                # in :Never
                #   # ...
                # in :ReplaceIdentification
                #   # ...
                # in :Always
                #   # ...
                # end
                # ```
                class UseSelfieVerification < Unit::Enum
                  NEVER = :Never
                  REPLACE_IDENTIFICATION = :ReplaceIdentification
                  ALWAYS = :Always

                  finalize!
                end
              end

              # @example
              # ```ruby
              # case source_of_income
              # in :EmploymentOrPayrollIncome
              #   # ...
              # in :PartTimeOrContractorIncome
              #   # ...
              # in :InheritancesAndGifts
              #   # ...
              # in :PersonalInvestments
              #   # ...
              # in :BusinessOwnershipInterests
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class SourceOfIncome < Unit::Enum
                EMPLOYMENT_OR_PAYROLL_INCOME = :EmploymentOrPayrollIncome
                PART_TIME_OR_CONTRACTOR_INCOME = :PartTimeOrContractorIncome
                INHERITANCES_AND_GIFTS = :InheritancesAndGifts
                PERSONAL_INVESTMENTS = :PersonalInvestments
                BUSINESS_OWNERSHIP_INTERESTS = :BusinessOwnershipInterests
                GOVERNMENT_BENEFITS = :GovernmentBenefits

                finalize!
              end

              # @example
              # ```ruby
              # case title
              # in :President
              #   # ...
              # in :CEO
              #   # ...
              # in :COO
              #   # ...
              # in :CFO
              #   # ...
              # in :BenefitsAdministrationOfficer
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Title < Unit::Enum
                PRESIDENT = :President
                CEO = :CEO
                COO = :COO
                CFO = :CFO
                BENEFITS_ADMINISTRATION_OFFICER = :BenefitsAdministrationOfficer
                CIO = :CIO
                VP = :VP
                AVP = :AVP
                TREASURER = :Treasurer
                SECRETARY = :Secretary
                CONTROLLER = :Controller
                MANAGER = :Manager
                PARTNER = :Partner
                MEMBER = :Member

                finalize!
              end
            end

            # @example
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
          # ```ruby
          # case lang
          # in :en
          #   # ...
          # in :es
          #   # ...
          # end
          # ```
          class Lang < Unit::Enum
            EN = :en
            ES = :es

            finalize!
          end

          # @example
          # ```ruby
          # require_id_verification => {
          #   beneficial_owners: Unit::BooleanModel,
          #   individual: Unit::BooleanModel,
          #   officer: Unit::BooleanModel
          # }
          # ```
          class RequireIDVerification < Unit::BaseModel
            # @!attribute [r] beneficial_owners
            #
            #   @return [Boolean, nil]
            optional :beneficial_owners, Unit::BooleanModel, api_name: :beneficialOwners

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :beneficial_owners

            # @!attribute [r] individual
            #
            #   @return [Boolean, nil]
            optional :individual, Unit::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :individual

            # @!attribute [r] officer
            #
            #   @return [Boolean, nil]
            optional :officer, Unit::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :officer

            # @!parse
            #   # @param beneficial_owners [Boolean]
            #   # @param individual [Boolean]
            #   # @param officer [Boolean]
            #   #
            #   def initialize(beneficial_owners: nil, individual: nil, officer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # settings_override => {
          #   additional_disclosures: -> { Unit::ArrayOf[Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure] === _1 },
          #   cardholder_terms_url: String,
          #   cash_advanced_terms_url: String,
          #   client_terms_url: String,
          #   debit_card_disclosure_url: String,
          #   **_
          # }
          # ```
          class SettingsOverride < Unit::BaseModel
            # @!attribute [r] additional_disclosures
            #
            #   @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure>]
            optional :additional_disclosures,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure]
                     },
                     api_name: :additionalDisclosures

            # @!parse
            #   # @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure>]
            #   attr_writer :additional_disclosures

            # @!attribute [r] cardholder_terms_url
            #
            #   @return [String, nil]
            optional :cardholder_terms_url, String, api_name: :cardholderTermsUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :cardholder_terms_url

            # @!attribute [r] cash_advanced_terms_url
            #
            #   @return [String, nil]
            optional :cash_advanced_terms_url, String, api_name: :cashAdvancedTermsUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :cash_advanced_terms_url

            # @!attribute [r] client_terms_url
            #
            #   @return [String, nil]
            optional :client_terms_url, String, api_name: :clientTermsUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :client_terms_url

            # @!attribute [r] debit_card_disclosure_url
            #
            #   @return [String, nil]
            optional :debit_card_disclosure_url, String, api_name: :debitCardDisclosureUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :debit_card_disclosure_url

            # @!attribute [r] deposit_terms_url
            #
            #   @return [String, nil]
            optional :deposit_terms_url, String, api_name: :depositTermsUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :deposit_terms_url

            # @!attribute [r] electronic_disclosures_url
            #
            #   @return [String, nil]
            optional :electronic_disclosures_url, String, api_name: :electronicDisclosuresUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :electronic_disclosures_url

            # @!attribute [r] privacy_policy_url
            #
            #   @return [String, nil]
            optional :privacy_policy_url, String, api_name: :privacyPolicyUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :privacy_policy_url

            # @!attribute [r] redirect_url
            #
            #   @return [String, nil]
            optional :redirect_url, String, api_name: :redirectUrl

            # @!parse
            #   # @return [String]
            #   attr_writer :redirect_url

            # @!parse
            #   # @param additional_disclosures [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure>]
            #   # @param cardholder_terms_url [String]
            #   # @param cash_advanced_terms_url [String]
            #   # @param client_terms_url [String]
            #   # @param debit_card_disclosure_url [String]
            #   # @param deposit_terms_url [String]
            #   # @param electronic_disclosures_url [String]
            #   # @param privacy_policy_url [String]
            #   # @param redirect_url [String]
            #   #
            #   def initialize(
            #     additional_disclosures: nil,
            #     cardholder_terms_url: nil,
            #     cash_advanced_terms_url: nil,
            #     client_terms_url: nil,
            #     debit_card_disclosure_url: nil,
            #     deposit_terms_url: nil,
            #     electronic_disclosures_url: nil,
            #     privacy_policy_url: nil,
            #     redirect_url: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # additional_disclosure => {
            #   title: String,
            #   url: String
            # }
            # ```
            class AdditionalDisclosure < Unit::BaseModel
              # @!attribute [r] title
              #
              #   @return [String, nil]
              optional :title, String

              # @!parse
              #   # @return [String]
              #   attr_writer :title

              # @!attribute [r] url
              #
              #   @return [String, nil]
              optional :url, String

              # @!parse
              #   # @return [String]
              #   attr_writer :url

              # @!parse
              #   # @param title [String]
              #   # @param url [String]
              #   #
              #   def initialize(title: nil, url: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end
        end

        # @example
        # ```ruby
        # relationships => {
        #   application: Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute application
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application]
          required :application,
                   -> {
                     Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application
                   }

          # @!parse
          #   # @param application [Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application]
          #   #
          #   def initialize(application:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # application => {
          #   data: Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data
          # }
          # ```
          class Application < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data]
            required :data,
                     -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Relationships::Application::Data::Type
                       }

              # @!parse
              #   # @param id [String]
              #   # @param type [String]
              #   #
              #   def initialize(id:, type:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case type
              # in :businessApplication
              #   # ...
              # in :individualApplication
              #   # ...
              # in :application
              #   # ...
              # end
              # ```
              class Type < Unit::Enum
                BUSINESS_APPLICATION = :businessApplication
                INDIVIDUAL_APPLICATION = :individualApplication
                APPLICATION = :application

                finalize!
              end
            end
          end
        end
      end
    end
  end
end
