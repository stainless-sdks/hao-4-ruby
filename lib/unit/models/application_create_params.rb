# frozen_string_literal: true

module Unit
  module Models
    class ApplicationCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication]
      required :data, union: -> { Unit::Models::ApplicationCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # case data
      # in Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication
      #   # ...
      # in Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication
      #   # ...
      # in Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication }

        variant -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication }

        variant -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication }

        # @example
        # ```ruby
        # create_individual_application => {
        #   attributes: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes,
        #   type: enum: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Type
        # }
        # ```
        class CreateIndividualApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Type]
          required :type,
                   enum: -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Type }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   address: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Address,
          #   date_of_birth: Date,
          #   email: String,
          #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::FullName,
          #   phone: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Phone,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Address]
            required :address,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Address }

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
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Phone }

            # @!attribute [r] annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::AnnualIncome, nil]
            optional :annual_income,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::AnnualIncome
                     },
                     api_name: :annualIncome

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::AnnualIncome]
            #   attr_writer :annual_income

            # @!attribute [r] device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint]
                     },
                     api_name: :deviceFingerprints

            # @!parse
            #   # @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint>]
            #   attr_writer :device_fingerprints

            # @!attribute [r] evaluation_params
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams, nil]
            optional :evaluation_params,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams
                     },
                     api_name: :EvaluationParams

            # @!parse
            #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams]
            #   attr_writer :evaluation_params

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Industry, nil]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Industry
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Industry]
            #   attr_writer :industry

            # @!attribute [r] ip
            #
            #   @return [String, nil]
            optional :ip, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ip

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

            # @!attribute nationality
            #
            #   @return [String, nil]
            optional :nationality, String, nil?: true

            # @!attribute [r] occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Occupation, nil]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Occupation
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Occupation]
            #   attr_writer :occupation

            # @!attribute passport
            #
            #   @return [String, nil]
            optional :passport, String, nil?: true

            # @!attribute [r] power_of_attorney_agent
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent, nil]
            optional :power_of_attorney_agent,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent
                     },
                     api_name: :powerOfAttorneyAgent

            # @!parse
            #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent]
            #   attr_writer :power_of_attorney_agent

            # @!attribute [r] source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::SourceOfIncome, nil]
            optional :source_of_income,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::SourceOfIncome
                     },
                     api_name: :sourceOfIncome

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::SourceOfIncome]
            #   attr_writer :source_of_income

            # @!attribute ssn
            #
            #   @return [String, nil]
            optional :ssn, String, nil?: true

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!parse
            #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::FullName]
            #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Phone]
            #   # @param annual_income [String]
            #   # @param device_fingerprints [Array<Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint>]
            #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams]
            #   # @param idempotency_key [String]
            #   # @param industry [String]
            #   # @param ip [String]
            #   # @param jwt_subject [String, nil]
            #   # @param nationality [String, nil]
            #   # @param occupation [String]
            #   # @param passport [String, nil]
            #   # @param power_of_attorney_agent [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent]
            #   # @param source_of_income [String]
            #   # @param ssn [String, nil]
            #   # @param tags [Hash{Symbol=>String}]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     annual_income: nil,
            #     device_fingerprints: nil,
            #     evaluation_params: nil,
            #     idempotency_key: nil,
            #     industry: nil,
            #     ip: nil,
            #     jwt_subject: nil,
            #     nationality: nil,
            #     occupation: nil,
            #     passport: nil,
            #     power_of_attorney_agent: nil,
            #     source_of_income: nil,
            #     ssn: nil,
            #     tags: nil,
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
            # device_fingerprint => {
            #   provider: enum: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint::Provider,
            #   value: String
            # }
            # ```
            class DeviceFingerprint < Unit::BaseModel
              # @!attribute provider
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint::Provider]
              required :provider,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint::Provider
                       }

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!parse
              #   # @param provider [String]
              #   # @param value [String]
              #   #
              #   def initialize(provider:, value:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case provider
              # in :iovation
              #   # ...
              # end
              # ```
              class Provider < Unit::Enum
                IOVATION = :iovation

                finalize!
              end
            end

            # @example
            # ```ruby
            # evaluation_params => {
            #   require_id_verification: Unit::BooleanModel,
            #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification, nil]
              optional :use_selfie_verification,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification
                       },
                       api_name: :useSelfieVerification

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification]
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
            # power_of_attorney_agent => {
            #   address: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::FullName,
            #   phone: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Phone,
            #   **_
            # }
            # ```
            class PowerOfAttorneyAgent < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Address]
              required :address,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Address }

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
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Phone }

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              #   attr_writer :evaluation_params

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

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

              # @!attribute [r] ssn
              #
              #   @return [String, nil]
              optional :ssn, String

              # @!parse
              #   # @return [String]
              #   attr_writer :ssn

              # @!parse
              #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::FullName]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::Phone]
              #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              #   # @param jwt_subject [String, nil]
              #   # @param matricula_consular [String]
              #   # @param nationality [String]
              #   # @param passport [String]
              #   # @param ssn [String]
              #   #
              #   def initialize(
              #     address:,
              #     date_of_birth:,
              #     email:,
              #     full_name:,
              #     phone:,
              #     evaluation_params: nil,
              #     jwt_subject: nil,
              #     matricula_consular: nil,
              #     nationality: nil,
              #     passport: nil,
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
              # evaluation_params => {
              #   require_id_verification: Unit::BooleanModel,
              #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
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
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification]
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
          # case type
          # in :individualApplication
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_APPLICATION = :individualApplication

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_sole_proprietor_application => {
        #   attributes: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes,
        #   type: enum: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Type
        # }
        # ```
        class CreateSoleProprietorApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   address: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Address,
          #   date_of_birth: Date,
          #   email: String,
          #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::FullName,
          #   phone: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Phone,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Address]
            required :address,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Address }

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
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::FullName]
            required :full_name,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::FullName
                     },
                     api_name: :fullName

            # @!attribute phone
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Phone }

            # @!attribute [r] annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualIncome, nil]
            optional :annual_income,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualIncome
                     },
                     api_name: :annualIncome

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualIncome]
            #   attr_writer :annual_income

            # @!attribute [r] annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualRevenue, nil]
            optional :annual_revenue,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualRevenue
                     },
                     api_name: :annualRevenue

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualRevenue]
            #   attr_writer :annual_revenue

            # @!attribute [r] business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::BusinessVertical, nil]
            optional :business_vertical,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::BusinessVertical
                     },
                     api_name: :businessVertical

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::BusinessVertical]
            #   attr_writer :business_vertical

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String, nil?: true

            # @!attribute [r] device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint]
                     },
                     api_name: :deviceFingerprints

            # @!parse
            #   # @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint>]
            #   attr_writer :device_fingerprints

            # @!attribute ein
            #
            #   @return [String, nil]
            optional :ein, String, nil?: true

            # @!attribute [r] evaluation_params
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams, nil]
            optional :evaluation_params,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams
                     },
                     api_name: :EvaluationParams

            # @!parse
            #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams]
            #   attr_writer :evaluation_params

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Industry, nil]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Industry
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Industry]
            #   attr_writer :industry

            # @!attribute [r] ip
            #
            #   @return [String, nil]
            optional :ip, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ip

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

            # @!attribute matricula_consular
            #
            #   @return [String, nil]
            optional :matricula_consular, String, api_name: :matriculaConsular, nil?: true

            # @!attribute nationality
            #
            #   @return [String, nil]
            optional :nationality, String, nil?: true

            # @!attribute [r] number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::NumberOfEmployees, nil]
            optional :number_of_employees,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::NumberOfEmployees
                     },
                     api_name: :numberOfEmployees

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::NumberOfEmployees]
            #   attr_writer :number_of_employees

            # @!attribute [r] occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Occupation, nil]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Occupation
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Occupation]
            #   attr_writer :occupation

            # @!attribute passport
            #
            #   @return [String, nil]
            optional :passport, String, nil?: true

            # @!attribute [r] power_of_attorney_agent
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent, nil]
            optional :power_of_attorney_agent,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent
                     },
                     api_name: :powerOfAttorneyAgent

            # @!parse
            #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent]
            #   attr_writer :power_of_attorney_agent

            # @!attribute [r] sole_proprietorship
            #
            #   @return [Boolean, nil]
            optional :sole_proprietorship, Unit::BooleanModel, api_name: :soleProprietorship

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :sole_proprietorship

            # @!attribute [r] source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::SourceOfIncome, nil]
            optional :source_of_income,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::SourceOfIncome
                     },
                     api_name: :sourceOfIncome

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::SourceOfIncome]
            #   attr_writer :source_of_income

            # @!attribute ssn
            #
            #   @return [String, nil]
            optional :ssn, String, nil?: true

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!attribute [r] website
            #
            #   @return [String, nil]
            optional :website, String

            # @!parse
            #   # @return [String]
            #   attr_writer :website

            # @!parse
            #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Address]
            #   # @param date_of_birth [String]
            #   # @param email [String]
            #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::FullName]
            #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Phone]
            #   # @param annual_income [String]
            #   # @param annual_revenue [String]
            #   # @param business_vertical [String]
            #   # @param dba [String, nil]
            #   # @param device_fingerprints [Array<Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint>]
            #   # @param ein [String, nil]
            #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams]
            #   # @param idempotency_key [String]
            #   # @param industry [String]
            #   # @param ip [String]
            #   # @param jwt_subject [String, nil]
            #   # @param matricula_consular [String, nil]
            #   # @param nationality [String, nil]
            #   # @param number_of_employees [String]
            #   # @param occupation [String]
            #   # @param passport [String, nil]
            #   # @param power_of_attorney_agent [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent]
            #   # @param sole_proprietorship [Boolean]
            #   # @param source_of_income [String]
            #   # @param ssn [String, nil]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param website [String]
            #   #
            #   def initialize(
            #     address:,
            #     date_of_birth:,
            #     email:,
            #     full_name:,
            #     phone:,
            #     annual_income: nil,
            #     annual_revenue: nil,
            #     business_vertical: nil,
            #     dba: nil,
            #     device_fingerprints: nil,
            #     ein: nil,
            #     evaluation_params: nil,
            #     idempotency_key: nil,
            #     industry: nil,
            #     ip: nil,
            #     jwt_subject: nil,
            #     matricula_consular: nil,
            #     nationality: nil,
            #     number_of_employees: nil,
            #     occupation: nil,
            #     passport: nil,
            #     power_of_attorney_agent: nil,
            #     sole_proprietorship: nil,
            #     source_of_income: nil,
            #     ssn: nil,
            #     tags: nil,
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
            # case annual_revenue
            # in :UpTo50k
            #   # ...
            # in :Between50kAnd100k
            #   # ...
            # in :Between100kAnd200k
            #   # ...
            # in :Between200kAnd500k
            #   # ...
            # in :Over500k
            #   # ...
            # end
            # ```
            class AnnualRevenue < Unit::Enum
              UP_TO50K = :UpTo50k
              BETWEEN50K_AND100K = :Between50kAnd100k
              BETWEEN100K_AND200K = :Between100kAnd200k
              BETWEEN200K_AND500K = :Between200kAnd500k
              OVER500K = :Over500k

              finalize!
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
            # device_fingerprint => {
            #   provider: enum: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint::Provider,
            #   value: String
            # }
            # ```
            class DeviceFingerprint < Unit::BaseModel
              # @!attribute provider
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint::Provider]
              required :provider,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint::Provider
                       }

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!parse
              #   # @param provider [String]
              #   # @param value [String]
              #   #
              #   def initialize(provider:, value:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case provider
              # in :iovation
              #   # ...
              # end
              # ```
              class Provider < Unit::Enum
                IOVATION = :iovation

                finalize!
              end
            end

            # @example
            # ```ruby
            # evaluation_params => {
            #   require_id_verification: Unit::BooleanModel,
            #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification, nil]
              optional :use_selfie_verification,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification
                       },
                       api_name: :useSelfieVerification

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification]
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
            # case number_of_employees
            # in :One
            #   # ...
            # in :Between2And5
            #   # ...
            # in :Between5And10
            #   # ...
            # in :Over10
            #   # ...
            # end
            # ```
            class NumberOfEmployees < Unit::Enum
              ONE = :One
              BETWEEN2_AND5 = :Between2And5
              BETWEEN5_AND10 = :Between5And10
              OVER10 = :Over10

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
            # power_of_attorney_agent => {
            #   address: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::FullName,
            #   phone: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Phone,
            #   **_
            # }
            # ```
            class PowerOfAttorneyAgent < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Address]
              required :address,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Address }

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
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Phone }

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              #   attr_writer :evaluation_params

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

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

              # @!attribute [r] ssn
              #
              #   @return [String, nil]
              optional :ssn, String

              # @!parse
              #   # @return [String]
              #   attr_writer :ssn

              # @!parse
              #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::FullName]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::Phone]
              #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              #   # @param jwt_subject [String, nil]
              #   # @param matricula_consular [String]
              #   # @param nationality [String]
              #   # @param passport [String]
              #   # @param ssn [String]
              #   #
              #   def initialize(
              #     address:,
              #     date_of_birth:,
              #     email:,
              #     full_name:,
              #     phone:,
              #     evaluation_params: nil,
              #     jwt_subject: nil,
              #     matricula_consular: nil,
              #     nationality: nil,
              #     passport: nil,
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
              # evaluation_params => {
              #   require_id_verification: Unit::BooleanModel,
              #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
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
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification]
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
          # case type
          # in :individualApplication
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_APPLICATION = :individualApplication

            finalize!
          end
        end

        # @example
        # ```ruby
        # create_business_application => {
        #   attributes: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes,
        #   type: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Type
        # }
        # ```
        class CreateBusinessApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # attributes => {
          #   address: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Address,
          #   beneficial_owners: -> { Unit::ArrayOf[Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner] === _1 },
          #   contact: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact,
          #   ein: String,
          #   entity_type: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::EntityType,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Address]
            required :address,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Address }

            # @!attribute beneficial_owners
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner>]
            required :beneficial_owners,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner]
                     },
                     api_name: :beneficialOwners

            # @!attribute contact
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact]
            required :contact,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact }

            # @!attribute ein
            #
            #   @return [String]
            required :ein, String

            # @!attribute entity_type
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::EntityType]
            required :entity_type,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::EntityType
                     },
                     api_name: :entityType

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute officer
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer]
            required :officer,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer }

            # @!attribute phone
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Phone]
            required :phone,
                     -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Phone }

            # @!attribute state_of_incorporation
            #
            #   @return [String]
            required :state_of_incorporation, String, api_name: :stateOfIncorporation

            # @!attribute [r] annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::AnnualRevenue, nil]
            optional :annual_revenue,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::AnnualRevenue
                     },
                     api_name: :annualRevenue

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::AnnualRevenue]
            #   attr_writer :annual_revenue

            # @!attribute [r] business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BusinessVertical, nil]
            optional :business_vertical,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BusinessVertical
                     },
                     api_name: :businessVertical

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BusinessVertical]
            #   attr_writer :business_vertical

            # @!attribute [r] cash_flow
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::CashFlow, nil]
            optional :cash_flow,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::CashFlow
                     },
                     api_name: :cashFlow

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::CashFlow]
            #   attr_writer :cash_flow

            # @!attribute [r] countries_of_operation
            #
            #   @return [Array<String>]
            optional :countries_of_operation, Unit::ArrayOf[String], api_name: :countriesOfOperation

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :countries_of_operation

            # @!attribute [r] date_of_incorporation
            #
            #   @return [Date, nil]
            optional :date_of_incorporation, Date, api_name: :dateOfIncorporation

            # @!parse
            #   # @return [Date]
            #   attr_writer :date_of_incorporation

            # @!attribute [r] dba
            #
            #   @return [String, nil]
            optional :dba, String

            # @!parse
            #   # @return [String]
            #   attr_writer :dba

            # @!attribute [r] device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     -> {
                       Unit::ArrayOf[Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint]
                     },
                     api_name: :deviceFingerprints

            # @!parse
            #   # @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint>]
            #   attr_writer :device_fingerprints

            # @!attribute [r] idempotency_key
            #
            #   @return [String, nil]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!parse
            #   # @return [String]
            #   attr_writer :idempotency_key

            # @!attribute [r] industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Industry, nil]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Industry
                     }

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Industry]
            #   attr_writer :industry

            # @!attribute [r] ip
            #
            #   @return [String, nil]
            optional :ip, String

            # @!parse
            #   # @return [String]
            #   attr_writer :ip

            # @!attribute [r] number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::NumberOfEmployees, nil]
            optional :number_of_employees,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::NumberOfEmployees
                     },
                     api_name: :numberOfEmployees

            # @!parse
            #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::NumberOfEmployees]
            #   attr_writer :number_of_employees

            # @!attribute [r] purpose
            #
            #   @return [String, nil]
            optional :purpose, String

            # @!parse
            #   # @return [String]
            #   attr_writer :purpose

            # @!attribute [r] stock_symbol
            #
            #   @return [String, nil]
            optional :stock_symbol, String, api_name: :stockSymbol

            # @!parse
            #   # @return [String]
            #   attr_writer :stock_symbol

            # @!attribute [r] tags
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :tags

            # @!attribute [r] website
            #
            #   @return [String, nil]
            optional :website, String

            # @!parse
            #   # @return [String]
            #   attr_writer :website

            # @!attribute [r] year_of_incorporation
            #
            #   @return [String, nil]
            optional :year_of_incorporation, String, api_name: :yearOfIncorporation

            # @!parse
            #   # @return [String]
            #   attr_writer :year_of_incorporation

            # @!parse
            #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Address]
            #   # @param beneficial_owners [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner>]
            #   # @param contact [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact]
            #   # @param ein [String]
            #   # @param entity_type [String]
            #   # @param name [String]
            #   # @param officer [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer]
            #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Phone]
            #   # @param state_of_incorporation [String]
            #   # @param annual_revenue [String]
            #   # @param business_vertical [String]
            #   # @param cash_flow [String]
            #   # @param countries_of_operation [Array<String>]
            #   # @param date_of_incorporation [String]
            #   # @param dba [String]
            #   # @param device_fingerprints [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint>]
            #   # @param idempotency_key [String]
            #   # @param industry [String]
            #   # @param ip [String]
            #   # @param number_of_employees [String]
            #   # @param purpose [String]
            #   # @param stock_symbol [String]
            #   # @param tags [Hash{Symbol=>String}]
            #   # @param website [String]
            #   # @param year_of_incorporation [String]
            #   #
            #   def initialize(
            #     address:,
            #     beneficial_owners:,
            #     contact:,
            #     ein:,
            #     entity_type:,
            #     name:,
            #     officer:,
            #     phone:,
            #     state_of_incorporation:,
            #     annual_revenue: nil,
            #     business_vertical: nil,
            #     cash_flow: nil,
            #     countries_of_operation: nil,
            #     date_of_incorporation: nil,
            #     dba: nil,
            #     device_fingerprints: nil,
            #     idempotency_key: nil,
            #     industry: nil,
            #     ip: nil,
            #     number_of_employees: nil,
            #     purpose: nil,
            #     stock_symbol: nil,
            #     tags: nil,
            #     website: nil,
            #     year_of_incorporation: nil,
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
            # beneficial_owner => {
            #   address: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::FullName,
            #   phone: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Phone,
            #   **_
            # }
            # ```
            class BeneficialOwner < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Address]
              required :address,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Address }

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
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Phone }

              # @!attribute [r] annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::AnnualIncome, nil]
              optional :annual_income,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::AnnualIncome
                       },
                       api_name: :annualIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::AnnualIncome]
              #   attr_writer :annual_income

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams]
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Occupation, nil]
              optional :occupation,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Occupation
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Occupation]
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::SourceOfIncome, nil]
              optional :source_of_income,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::SourceOfIncome
                       },
                       api_name: :sourceOfIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::SourceOfIncome]
              #   attr_writer :source_of_income

              # @!attribute [r] ssn
              #
              #   @return [String, nil]
              optional :ssn, String

              # @!parse
              #   # @return [String]
              #   attr_writer :ssn

              # @!parse
              #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::FullName]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Phone]
              #   # @param annual_income [String]
              #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams]
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
              #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification
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
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification]
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
            # contact => {
            #   email: String,
            #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::FullName,
            #   phone: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::Phone,
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
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::FullName
                       },
                       api_name: :fullName

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::Phone }

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject, nil?: true

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::FullName]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::Phone]
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
            # officer => {
            #   address: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Address,
            #   date_of_birth: Date,
            #   email: String,
            #   full_name: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::FullName,
            #   occupation: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Occupation,
            #   **_
            # }
            # ```
            class Officer < Unit::BaseModel
              # @!attribute address
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Address]
              required :address,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Address }

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
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::FullName]
              required :full_name,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::FullName
                       },
                       api_name: :fullName

              # @!attribute occupation
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Occupation]
              required :occupation,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Occupation
                       }

              # @!attribute phone
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Phone]
              required :phone,
                       -> { Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Phone }

              # @!attribute [r] annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::AnnualIncome, nil]
              optional :annual_income,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::AnnualIncome
                       },
                       api_name: :annualIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::AnnualIncome]
              #   attr_writer :annual_income

              # @!attribute [r] evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams, nil]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!parse
              #   # @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams]
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::SourceOfIncome, nil]
              optional :source_of_income,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::SourceOfIncome
                       },
                       api_name: :sourceOfIncome

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::SourceOfIncome]
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Title, nil]
              optional :title,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Title
                       }

              # @!parse
              #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Title]
              #   attr_writer :title

              # @!parse
              #   # @param address [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::FullName]
              #   # @param occupation [String]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Phone]
              #   # @param annual_income [String]
              #   # @param evaluation_params [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams]
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
              #   use_selfie_verification: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification
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
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification, nil]
                optional :use_selfie_verification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification
                         },
                         api_name: :useSelfieVerification

                # @!parse
                #   # @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification]
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

            # @example
            # ```ruby
            # case annual_revenue
            # in :UpTo250k
            #   # ...
            # in :Between250kAnd500k
            #   # ...
            # in :Between500kAnd1m
            #   # ...
            # in :Between1mAnd5m
            #   # ...
            # in :Over5m
            #   # ...
            # end
            # ```
            class AnnualRevenue < Unit::Enum
              UP_TO250K = :UpTo250k
              BETWEEN250K_AND500K = :Between250kAnd500k
              BETWEEN500K_AND1M = :Between500kAnd1m
              BETWEEN1M_AND5M = :Between1mAnd5m
              OVER5M = :Over5m

              finalize!
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
            # case cash_flow
            # in :Unpredictable
            #   # ...
            # in :Predictable
            #   # ...
            # end
            # ```
            class CashFlow < Unit::Enum
              UNPREDICTABLE = :Unpredictable
              PREDICTABLE = :Predictable

              finalize!
            end

            # @example
            # ```ruby
            # device_fingerprint => {
            #   provider: enum: Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint::Provider,
            #   value: String
            # }
            # ```
            class DeviceFingerprint < Unit::BaseModel
              # @!attribute provider
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint::Provider]
              required :provider,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint::Provider
                       }

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!parse
              #   # @param provider [String]
              #   # @param value [String]
              #   #
              #   def initialize(provider:, value:, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case provider
              # in :iovation
              #   # ...
              # end
              # ```
              class Provider < Unit::Enum
                IOVATION = :iovation

                finalize!
              end
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
            # case number_of_employees
            # in :UpTo10
            #   # ...
            # in :Between10And50
            #   # ...
            # in :Between50And100
            #   # ...
            # in :Between100And500
            #   # ...
            # in :Over500
            #   # ...
            # end
            # ```
            class NumberOfEmployees < Unit::Enum
              UP_TO10 = :UpTo10
              BETWEEN10_AND50 = :Between10And50
              BETWEEN50_AND100 = :Between50And100
              BETWEEN100_AND500 = :Between100And500
              OVER500 = :Over500

              finalize!
            end
          end

          # @example
          # ```ruby
          # case type
          # in :businessApplication
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BUSINESS_APPLICATION = :businessApplication

            finalize!
          end
        end
      end
    end
  end
end
