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
      #
      # ```ruby
      # case union
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

            # @!attribute annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::AnnualIncome]
            optional :annual_income,
                     api_name: :annualIncome,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::AnnualIncome
                     }

            # @!attribute device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::DeviceFingerprint
                     }],
                     api_name: :deviceFingerprints

            # @!attribute evaluation_params
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams]
            optional :evaluation_params,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams
                     },
                     api_name: :EvaluationParams

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Industry]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Industry
                     }

            # @!attribute ip
            #
            #   @return [String]
            optional :ip, String

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject

            # @!attribute nationality
            #
            #   @return [String, nil]
            optional :nationality, String

            # @!attribute occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Occupation]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::Occupation
                     }

            # @!attribute passport
            #
            #   @return [String, nil]
            optional :passport, String

            # @!attribute power_of_attorney_agent
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent]
            optional :power_of_attorney_agent,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent
                     },
                     api_name: :powerOfAttorneyAgent

            # @!attribute source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::SourceOfIncome]
            optional :source_of_income,
                     api_name: :sourceOfIncome,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::SourceOfIncome
                     }

            # @!attribute ssn
            #
            #   @return [String, nil]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

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
            #   # @param tags [Hash{Symbol => String}]
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

              finalize!
            end

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
              #
              # ```ruby
              # case enum
              # in :iovation
              #   # ...
              # end
              # ```
              class Provider < Unit::Enum
                IOVATION = :iovation

                finalize!
              end
            end

            class EvaluationParams < Unit::BaseModel
              # @!attribute require_id_verification
              #
              #   @return [Boolean]
              optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

              # @!attribute use_selfie_verification
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification]
              optional :use_selfie_verification,
                       api_name: :useSelfieVerification,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::EvaluationParams::UseSelfieVerification
                       }

              # @!parse
              #   # @param require_id_verification [Boolean]
              #   # @param use_selfie_verification [String]
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

                finalize!
              end
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

              finalize!
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

              finalize!
            end

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

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject

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

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

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

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateIndividualApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
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

                  finalize!
                end
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

              finalize!
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :individualApplication
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_APPLICATION = :individualApplication

            finalize!
          end
        end

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

            # @!attribute annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualIncome]
            optional :annual_income,
                     api_name: :annualIncome,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualIncome
                     }

            # @!attribute annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualRevenue]
            optional :annual_revenue,
                     api_name: :annualRevenue,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::AnnualRevenue
                     }

            # @!attribute business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::BusinessVertical]
            optional :business_vertical,
                     api_name: :businessVertical,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::BusinessVertical
                     }

            # @!attribute dba
            #
            #   @return [String, nil]
            optional :dba, String

            # @!attribute device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::DeviceFingerprint
                     }],
                     api_name: :deviceFingerprints

            # @!attribute ein
            #
            #   @return [String, nil]
            optional :ein, String

            # @!attribute evaluation_params
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams]
            optional :evaluation_params,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams
                     },
                     api_name: :EvaluationParams

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Industry]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Industry
                     }

            # @!attribute ip
            #
            #   @return [String]
            optional :ip, String

            # @!attribute jwt_subject
            #
            #   @return [String, nil]
            optional :jwt_subject, String, api_name: :jwtSubject

            # @!attribute matricula_consular
            #
            #   @return [String, nil]
            optional :matricula_consular, String, api_name: :matriculaConsular

            # @!attribute nationality
            #
            #   @return [String, nil]
            optional :nationality, String

            # @!attribute number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::NumberOfEmployees]
            optional :number_of_employees,
                     api_name: :numberOfEmployees,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::NumberOfEmployees
                     }

            # @!attribute occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Occupation]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::Occupation
                     }

            # @!attribute passport
            #
            #   @return [String, nil]
            optional :passport, String

            # @!attribute power_of_attorney_agent
            #
            #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent]
            optional :power_of_attorney_agent,
                     -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent
                     },
                     api_name: :powerOfAttorneyAgent

            # @!attribute sole_proprietorship
            #
            #   @return [Boolean]
            optional :sole_proprietorship, Unit::BooleanModel, api_name: :soleProprietorship

            # @!attribute source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::SourceOfIncome]
            optional :source_of_income,
                     api_name: :sourceOfIncome,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::SourceOfIncome
                     }

            # @!attribute ssn
            #
            #   @return [String, nil]
            optional :ssn, String

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute website
            #
            #   @return [String]
            optional :website, String

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
            #   # @param tags [Hash{Symbol => String}]
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

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
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

              finalize!
            end

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
              #
              # ```ruby
              # case enum
              # in :iovation
              #   # ...
              # end
              # ```
              class Provider < Unit::Enum
                IOVATION = :iovation

                finalize!
              end
            end

            class EvaluationParams < Unit::BaseModel
              # @!attribute require_id_verification
              #
              #   @return [Boolean]
              optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

              # @!attribute use_selfie_verification
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification]
              optional :use_selfie_verification,
                       api_name: :useSelfieVerification,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::EvaluationParams::UseSelfieVerification
                       }

              # @!parse
              #   # @param require_id_verification [Boolean]
              #   # @param use_selfie_verification [String]
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

                finalize!
              end
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

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
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

              finalize!
            end

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

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams
                       },
                       api_name: :EvaluationParams

              # @!attribute jwt_subject
              #
              #   @return [String, nil]
              optional :jwt_subject, String, api_name: :jwtSubject

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

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

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

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateSoleProprietorApplication::Attributes::PowerOfAttorneyAgent::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
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

                  finalize!
                end
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

              finalize!
            end
          end

          # @example
          #
          # ```ruby
          # case enum
          # in :individualApplication
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            INDIVIDUAL_APPLICATION = :individualApplication

            finalize!
          end
        end

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
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner
                     }],
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
                     api_name: :entityType,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::EntityType
                     }

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

            # @!attribute annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::AnnualRevenue]
            optional :annual_revenue,
                     api_name: :annualRevenue,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::AnnualRevenue
                     }

            # @!attribute business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BusinessVertical]
            optional :business_vertical,
                     api_name: :businessVertical,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BusinessVertical
                     }

            # @!attribute cash_flow
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::CashFlow]
            optional :cash_flow,
                     api_name: :cashFlow,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::CashFlow
                     }

            # @!attribute countries_of_operation
            #
            #   @return [Array<String>]
            optional :countries_of_operation, Unit::ArrayOf[String], api_name: :countriesOfOperation

            # @!attribute date_of_incorporation
            #
            #   @return [Date]
            optional :date_of_incorporation, Date, api_name: :dateOfIncorporation

            # @!attribute dba
            #
            #   @return [String]
            optional :dba, String

            # @!attribute device_fingerprints
            #
            #   @return [Array<Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint>]
            optional :device_fingerprints,
                     Unit::ArrayOf[-> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::DeviceFingerprint
                     }],
                     api_name: :deviceFingerprints

            # @!attribute idempotency_key
            #
            #   @return [String]
            optional :idempotency_key, String, api_name: :idempotencyKey

            # @!attribute industry
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Industry]
            optional :industry,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Industry
                     }

            # @!attribute ip
            #
            #   @return [String]
            optional :ip, String

            # @!attribute number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::NumberOfEmployees]
            optional :number_of_employees,
                     api_name: :numberOfEmployees,
                     enum: -> {
                       Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::NumberOfEmployees
                     }

            # @!attribute purpose
            #
            #   @return [String]
            optional :purpose, String

            # @!attribute stock_symbol
            #
            #   @return [String]
            optional :stock_symbol, String, api_name: :stockSymbol

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute website
            #
            #   @return [String]
            optional :website, String

            # @!attribute year_of_incorporation
            #
            #   @return [String]
            optional :year_of_incorporation, String, api_name: :yearOfIncorporation

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
            #   # @param tags [Hash{Symbol => String}]
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

              # @!attribute annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::AnnualIncome]
              optional :annual_income,
                       api_name: :annualIncome,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::AnnualIncome
                       }

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Occupation]
              optional :occupation,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::Occupation
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::SourceOfIncome]
              optional :source_of_income,
                       api_name: :sourceOfIncome,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::SourceOfIncome
                       }

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

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

                finalize!
              end

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::BeneficialOwner::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
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

                  finalize!
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

                finalize!
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

                finalize!
              end
            end

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
              optional :jwt_subject, String, api_name: :jwtSubject

              # @!parse
              #   # @param email [String]
              #   # @param full_name [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::FullName]
              #   # @param phone [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Contact::Phone]
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

              finalize!
            end

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

              # @!attribute annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::AnnualIncome]
              optional :annual_income,
                       api_name: :annualIncome,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::AnnualIncome
                       }

              # @!attribute evaluation_params
              #
              #   @return [Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams]
              optional :evaluation_params,
                       -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams
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
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::SourceOfIncome]
              optional :source_of_income,
                       api_name: :sourceOfIncome,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::SourceOfIncome
                       }

              # @!attribute ssn
              #
              #   @return [String]
              optional :ssn, String

              # @!attribute title
              #
              #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Title]
              optional :title,
                       enum: -> {
                         Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::Title
                       }

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

                finalize!
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

                finalize!
              end

              class EvaluationParams < Unit::BaseModel
                # @!attribute require_id_verification
                #
                #   @return [Boolean]
                optional :require_id_verification, Unit::BooleanModel, api_name: :requireIdVerification

                # @!attribute use_selfie_verification
                #
                #   @return [Symbol, Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification]
                optional :use_selfie_verification,
                         api_name: :useSelfieVerification,
                         enum: -> {
                           Unit::Models::ApplicationCreateParams::Data::CreateBusinessApplication::Attributes::Officer::EvaluationParams::UseSelfieVerification
                         }

                # @!parse
                #   # @param require_id_verification [Boolean]
                #   # @param use_selfie_verification [String]
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

                  finalize!
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

                finalize!
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

                finalize!
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

            # @example
            #
            # ```ruby
            # case enum
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

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
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
              #
              # ```ruby
              # case enum
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

              finalize!
            end

            # @example
            #
            # ```ruby
            # case enum
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
          #
          # ```ruby
          # case enum
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
