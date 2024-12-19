# frozen_string_literal: true

module Unit
  module Models
    class ApplicationFormCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationFormCreateParams::Data]
      optional :data, -> { Unit::Models::ApplicationFormCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ApplicationFormCreateParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Type]
        required :type, enum: -> { Unit::Models::ApplicationFormCreateParams::Data::Type }

        # @!attribute attributes
        #
        #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::ApplicationFormCreateParams::Data::Relationships]
        optional :relationships, -> { Unit::Models::ApplicationFormCreateParams::Data::Relationships }

        # @!parse
        #   # @param type [String]
        #   # @param attributes [Unit::Models::ApplicationFormCreateParams::Data::Attributes, nil]
        #   # @param relationships [Unit::Models::ApplicationFormCreateParams::Data::Relationships, nil]
        #   #
        #   def initialize(type:, attributes: nil, relationships: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :applicationForm
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          APPLICATION_FORM = :applicationForm
        end

        class Attributes < Unit::BaseModel
          # @!attribute allowed_application_types
          #
          #   @return [Array<Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType>]
          optional :allowed_application_types,
                   Unit::ArrayOf[enum: -> {
                     Unit::Models::ApplicationFormCreateParams::Data::Attributes::AllowedApplicationType
                   }],
                   api_name: :allowedApplicationTypes

          # @!attribute applicant_details
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails]
          optional :applicant_details,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails },
                   api_name: :applicantDetails

          # @!attribute hide_application_progress_tracker
          #
          #   @return [Boolean]
          optional :hide_application_progress_tracker,
                   Unit::BooleanModel,
                   api_name: :hideApplicationProgressTracker

          # @!attribute lang
          #
          #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang]
          optional :lang, enum: -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::Lang }

          # @!attribute require_id_verification
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification]
          optional :require_id_verification,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification },
                   api_name: :requireIdVerification

          # @!attribute settings_override
          #
          #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride]
          optional :settings_override,
                   -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride },
                   api_name: :settingsOverride

          # @!attribute tags
          #
          #   @return [Hash{Symbol => String}]
          optional :tags, Unit::HashOf[String]

          # @!parse
          #   # @param allowed_application_types [Array<String>, nil]
          #   # @param applicant_details [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails, nil]
          #   # @param hide_application_progress_tracker [Boolean, nil]
          #   # @param lang [String, nil]
          #   # @param require_id_verification [Unit::Models::ApplicationFormCreateParams::Data::Attributes::RequireIDVerification, nil]
          #   # @param settings_override [Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride, nil]
          #   # @param tags [Hash{Symbol => String}, nil]
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
          #
          # ```ruby
          # case enum
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
          end

          class ApplicantDetails < Unit::BaseModel
            # @!attribute address
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address]
            optional :address,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address }

            # @!attribute application_type
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType]
            optional :application_type,
                     api_name: :applicationType,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::ApplicationType
                     }

            # @!attribute beneficial_owners
            #
            #   @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner>]
            optional :beneficial_owners,
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner
                     }],
                     api_name: :beneficialOwners

            # @!attribute business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical]
            optional :business_vertical,
                     api_name: :businessVertical,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BusinessVertical
                     }

            # @!attribute contact
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact]
            optional :contact,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact }

            # @!attribute date_of_birth
            #
            #   @return [Date]
            optional :date_of_birth, Date, api_name: :dateOfBirth

            # @!attribute dba
            #
            #   @return [String]
            optional :dba, String

            # @!attribute ein
            #
            #   @return [String]
            optional :ein, String

            # @!attribute email
            #
            #   @return [String]
            optional :email, String

            # @!attribute entity_type
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::EntityType]
            optional :entity_type,
                     api_name: :entityType,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::EntityType
                     }

            # @!attribute full_name
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName]
            optional :full_name,
                     -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName
                     },
                     api_name: :fullName

            # @!attribute industry
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Industry]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Industry
                     }

            # @!attribute jwt_subject
            #
            #   @return [String]
            optional :jwt_subject, String, api_name: :jwtSubject

            # @!attribute name
            #
            #   @return [String]
            optional :name, String

            # @!attribute nationality
            #
            #   @return [String]
            optional :nationality, String

            # @!attribute occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Occupation]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Occupation
                     }

            # @!attribute officer
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer]
            optional :officer,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer }

            # @!attribute passport
            #
            #   @return [String]
            optional :passport, String

            # @!attribute phone
            #
            #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone]
            optional :phone,
                     -> { Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone }

            # @!attribute ssn
            #
            #   @return [String]
            optional :ssn, String

            # @!attribute state_of_incorporation
            #
            #   @return [String]
            optional :state_of_incorporation, String, api_name: :stateOfIncorporation

            # @!attribute website
            #
            #   @return [String]
            optional :website, String

            # @!parse
            #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Address, nil]
            #   # @param application_type [String, nil]
            #   # @param beneficial_owners [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner>, nil]
            #   # @param business_vertical [String, nil]
            #   # @param contact [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact, nil]
            #   # @param date_of_birth [String, nil]
            #   # @param dba [String, nil]
            #   # @param ein [String, nil]
            #   # @param email [String, nil]
            #   # @param entity_type [String, nil]
            #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::FullName, nil]
            #   # @param industry [String, nil]
            #   # @param jwt_subject [String, nil]
            #   # @param name [String, nil]
            #   # @param nationality [String, nil]
            #   # @param occupation [String, nil]
            #   # @param officer [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer, nil]
            #   # @param passport [String, nil]
            #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Phone, nil]
            #   # @param ssn [String, nil]
            #   # @param state_of_incorporation [String, nil]
            #   # @param website [String, nil]
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
              #   @return [String]
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

            # @example
            #
            # ```ruby
            # case enum
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
            end

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

              # @!attribute annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::AnnualIncome]
              optional :annual_income,
                       api_name: :annualIncome,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::AnnualIncome
                       }

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!attribute matricula_consular
              #
              #   @return [String]
              optional :matricula_consular, String, api_name: :matriculaConsular

              # @!attribute nationality
              #
              #   @return [String]
              optional :nationality, String

              # @!attribute occupation
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Occupation]
              optional :occupation,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Occupation
                       }

              # @!attribute passport
              #
              #   @return [String]
              optional :passport, String

              # @!attribute percentage
              #
              #   @return [Integer]
              optional :percentage, Integer

              # @!attribute source_of_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::SourceOfIncome]
              optional :source_of_income,
                       api_name: :sourceOfIncome,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::SourceOfIncome
                       }

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

              # @!parse
              #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::FullName]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::Phone]
              #   # @param annual_income [String, nil]
              #   # @param evaluation_params [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams, nil]
              #   # @param matricula_consular [String, nil]
              #   # @param nationality [String, nil]
              #   # @param occupation [String, nil]
              #   # @param passport [String, nil]
              #   # @param percentage [Integer, nil]
              #   # @param source_of_income [String, nil]
              #   # @param ssn [String, nil]
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
                #   @return [String]
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
              #
              # ```ruby
              # case enum
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
              end

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::BeneficialOwner::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean, nil]
                #   # @param use_selfie_verification [String, nil]
                #   #
                #   def initialize(require_id_verification: nil, use_selfie_verification: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
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
                end
              end

              # @example
              #
              # ```ruby
              # case enum
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
              end

              # @example
              #
              # ```ruby
              # case enum
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
              end
            end

            # @example
            #
            # ```ruby
            # case enum
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
            end

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
              #   @return [String]
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::FullName]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Contact::Phone]
              #   # @param jwt_subject [String, nil]
              #   #
              #   def initialize(email:, full_name:, phone:, jwt_subject: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

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
            #
            # ```ruby
            # case enum
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
            end

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
            #
            # ```ruby
            # case enum
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
            end

            # @example
            #
            # ```ruby
            # case enum
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
            end

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

              # @!attribute annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::AnnualIncome]
              optional :annual_income,
                       api_name: :annualIncome,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::AnnualIncome
                       }

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!attribute matricula_consular
              #
              #   @return [String]
              optional :matricula_consular, String, api_name: :matriculaConsular

              # @!attribute nationality
              #
              #   @return [String]
              optional :nationality, String

              # @!attribute passport
              #
              #   @return [String]
              optional :passport, String

              # @!attribute source_of_income
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::SourceOfIncome]
              optional :source_of_income,
                       api_name: :sourceOfIncome,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::SourceOfIncome
                       }

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

              # @!attribute title
              #
              #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Title]
              optional :title,
                       enum: -> {
                         Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Title
                       }

              # @!parse
              #   # @param address [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Address]
              #   # @param date_of_birth [String]
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::FullName]
              #   # @param occupation [String]
              #   # @param phone [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::Phone]
              #   # @param annual_income [String, nil]
              #   # @param evaluation_params [Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams, nil]
              #   # @param matricula_consular [String, nil]
              #   # @param nationality [String, nil]
              #   # @param passport [String, nil]
              #   # @param source_of_income [String, nil]
              #   # @param ssn [String, nil]
              #   # @param title [String, nil]
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
                #   @return [String]
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
              #
              # ```ruby
              # case enum
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
              end

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
              #
              # ```ruby
              # case enum
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
              end

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationFormCreateParams::Data::Attributes::ApplicantDetails::Officer::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean, nil]
                #   # @param use_selfie_verification [String, nil]
                #   #
                #   def initialize(require_id_verification: nil, use_selfie_verification: nil, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # case enum
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
                end
              end

              # @example
              #
              # ```ruby
              # case enum
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
              end

              # @example
              #
              # ```ruby
              # case enum
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
              end
            end

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
          #
          # ```ruby
          # case enum
          # in :en
          #   # ...
          # in :es
          #   # ...
          # end
          # ```
          class Lang < Unit::Enum
            EN = :en
            ES = :es
          end

          class RequireIDVerification < Unit::BaseModel
            # @!attribute beneficial_owners
            #
            #   @return [Boolean]
            optional :beneficial_owners, Unit::BooleanModel, api_name: :beneficialOwners

            # @!attribute individual
            #
            #   @return [Boolean]
            optional :individual, Unit::BooleanModel

            # @!attribute officer
            #
            #   @return [Boolean]
            optional :officer, Unit::BooleanModel

            # @!parse
            #   # @param beneficial_owners [Boolean, nil]
            #   # @param individual [Boolean, nil]
            #   # @param officer [Boolean, nil]
            #   #
            #   def initialize(beneficial_owners: nil, individual: nil, officer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void
          end

          class SettingsOverride < Unit::BaseModel
            # @!attribute additional_disclosures
            #
            #   @return [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure>]
            optional :additional_disclosures,
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure
                     }],
                     api_name: :additionalDisclosures

            # @!attribute cardholder_terms_url
            #
            #   @return [String]
            optional :cardholder_terms_url, String, api_name: :cardholderTermsUrl

            # @!attribute cash_advanced_terms_url
            #
            #   @return [String]
            optional :cash_advanced_terms_url, String, api_name: :cashAdvancedTermsUrl

            # @!attribute client_terms_url
            #
            #   @return [String]
            optional :client_terms_url, String, api_name: :clientTermsUrl

            # @!attribute debit_card_disclosure_url
            #
            #   @return [String]
            optional :debit_card_disclosure_url, String, api_name: :debitCardDisclosureUrl

            # @!attribute deposit_terms_url
            #
            #   @return [String]
            optional :deposit_terms_url, String, api_name: :depositTermsUrl

            # @!attribute electronic_disclosures_url
            #
            #   @return [String]
            optional :electronic_disclosures_url, String, api_name: :electronicDisclosuresUrl

            # @!attribute privacy_policy_url
            #
            #   @return [String]
            optional :privacy_policy_url, String, api_name: :privacyPolicyUrl

            # @!attribute redirect_url
            #
            #   @return [String]
            optional :redirect_url, String, api_name: :redirectUrl

            # @!parse
            #   # @param additional_disclosures [Array<Unit::Models::ApplicationFormCreateParams::Data::Attributes::SettingsOverride::AdditionalDisclosure>, nil]
            #   # @param cardholder_terms_url [String, nil]
            #   # @param cash_advanced_terms_url [String, nil]
            #   # @param client_terms_url [String, nil]
            #   # @param debit_card_disclosure_url [String, nil]
            #   # @param deposit_terms_url [String, nil]
            #   # @param electronic_disclosures_url [String, nil]
            #   # @param privacy_policy_url [String, nil]
            #   # @param redirect_url [String, nil]
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

            class AdditionalDisclosure < Unit::BaseModel
              # @!attribute title
              #
              #   @return [String]
              optional :title, String

              # @!attribute url
              #
              #   @return [String]
              optional :url, String

              # @!parse
              #   # @param title [String, nil]
              #   # @param url [String, nil]
              #   #
              #   def initialize(title: nil, url: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void
            end
          end
        end

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
              #
              # ```ruby
              # case enum
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
              end
            end
          end
        end
      end
    end
  end
end
