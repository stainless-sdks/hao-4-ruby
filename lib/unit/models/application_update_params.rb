# frozen_string_literal: true

module Unit
  module Models
    class ApplicationUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer]
      required :data, union: -> { Unit::Models::ApplicationUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case data
      # in Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication
      #   # ...
      # in Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner
      #   # ...
      # in Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication
      #   # ...
      # in Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication
      #   # ...
      # in Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer
      #   # ...
      # end
      # ```
      class Data < Unit::Union
        variant -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication }

        variant -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner }

        variant -> { Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication }

        variant -> { Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication }

        variant -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer }

        # @example
        #
        # ```ruby
        # update_business_application => {
        #   attributes: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes,
        #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Type
        # }
        # ```
        class UpdateBusinessApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   annual_revenue: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::AnnualRevenue,
          #   business_vertical: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::BusinessVertical,
          #   cash_flow: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::CashFlow,
          #   countries_of_operation: -> { Unit::ArrayOf[String] === _1 },
          #   number_of_employees: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::NumberOfEmployees,
          #   **_
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::AnnualRevenue]
            optional :annual_revenue,
                     api_name: :annualRevenue,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::AnnualRevenue
                     }

            # @!attribute business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::BusinessVertical]
            optional :business_vertical,
                     api_name: :businessVertical,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::BusinessVertical
                     }

            # @!attribute cash_flow
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::CashFlow]
            optional :cash_flow,
                     api_name: :cashFlow,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::CashFlow
                     }

            # @!attribute countries_of_operation
            #
            #   @return [Array<String>]
            optional :countries_of_operation, Unit::ArrayOf[String], api_name: :countriesOfOperation

            # @!attribute number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::NumberOfEmployees]
            optional :number_of_employees,
                     api_name: :numberOfEmployees,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplication::Attributes::NumberOfEmployees
                     }

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
            #   # @param annual_revenue [String]
            #   # @param business_vertical [String]
            #   # @param cash_flow [String]
            #   # @param countries_of_operation [Array<String>]
            #   # @param number_of_employees [String]
            #   # @param stock_symbol [String]
            #   # @param tags [Hash{Symbol => String}]
            #   # @param website [String]
            #   # @param year_of_incorporation [String]
            #   #
            #   def initialize(
            #     annual_revenue: nil,
            #     business_vertical: nil,
            #     cash_flow: nil,
            #     countries_of_operation: nil,
            #     number_of_employees: nil,
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
            #
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
            #
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
            #
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
            #
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
          #
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

        # @example
        #
        # ```ruby
        # update_business_application_beneficial_owner => {
        #   attributes: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes,
        #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Type
        # }
        # ```
        class UpdateBusinessApplicationBeneficialOwner < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   annual_income: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::AnnualIncome,
          #   occupation: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Occupation,
          #   relationships: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships,
          #   source_of_income: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::SourceOfIncome
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::AnnualIncome]
            optional :annual_income,
                     api_name: :annualIncome,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::AnnualIncome
                     }

            # @!attribute occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Occupation]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Occupation
                     }

            # @!attribute relationships
            #
            #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships]
            optional :relationships,
                     -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships }

            # @!attribute source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::SourceOfIncome]
            optional :source_of_income,
                     api_name: :sourceOfIncome,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::SourceOfIncome
                     }

            # @!parse
            #   # @param annual_income [String]
            #   # @param occupation [String]
            #   # @param relationships [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships]
            #   # @param source_of_income [String]
            #   #
            #   def initialize(annual_income: nil, occupation: nil, relationships: nil, source_of_income: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
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
            #
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
            #
            # ```ruby
            # relationships => {
            #   application: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application
            # }
            # ```
            class Relationships < Unit::BaseModel
              # @!attribute application
              #
              #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application]
              optional :application,
                       -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application }

              # @!parse
              #   # @param application [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application]
              #   #
              #   def initialize(application: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
              # ```ruby
              # application => {
              #   data: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data
              # }
              # ```
              class Application < Unit::BaseModel
                # @!attribute data
                #
                #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data]
                required :data,
                         -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data }

                # @!parse
                #   # @param data [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data]
                #   #
                #   def initialize(data:, **) = super

                # def initialize: (Hash | Unit::BaseModel) -> void

                # @example
                #
                # ```ruby
                # data => {
                #   id: String,
                #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data::Type
                # }
                # ```
                class Data < Unit::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute type
                  #
                  #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data::Type]
                  required :type,
                           enum: -> {
                             Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessApplicationBeneficialOwner::Attributes::Relationships::Application::Data::Type
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

            # @example
            #
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
          #
          # ```ruby
          # case type
          # in :beneficialOwner
          #   # ...
          # end
          # ```
          class Type < Unit::Enum
            BENEFICIAL_OWNER = :beneficialOwner

            finalize!
          end
        end

        # @example
        #
        # ```ruby
        # update_sole_proprietor_application => {
        #   attributes: Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes,
        #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Type
        # }
        # ```
        class UpdateSoleProprietorApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   annual_revenue: Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::AnnualRevenue,
          #   business_vertical: Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::BusinessVertical,
          #   number_of_employees: Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::NumberOfEmployees,
          #   tags: -> { Unit::HashOf[String] === _1 },
          #   website: String
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute annual_revenue
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::AnnualRevenue]
            optional :annual_revenue,
                     api_name: :annualRevenue,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::AnnualRevenue
                     }

            # @!attribute business_vertical
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::BusinessVertical]
            optional :business_vertical,
                     api_name: :businessVertical,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::BusinessVertical
                     }

            # @!attribute number_of_employees
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::NumberOfEmployees]
            optional :number_of_employees,
                     api_name: :numberOfEmployees,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateSoleProprietorApplication::Attributes::NumberOfEmployees
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!attribute website
            #
            #   @return [String]
            optional :website, String

            # @!parse
            #   # @param annual_revenue [String]
            #   # @param business_vertical [String]
            #   # @param number_of_employees [String]
            #   # @param tags [Hash{Symbol => String}]
            #   # @param website [String]
            #   #
            #   def initialize(annual_revenue: nil, business_vertical: nil, number_of_employees: nil, tags: nil, website: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
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
            #
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
            #
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
          end

          # @example
          #
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
        #
        # ```ruby
        # update_individual_application => {
        #   attributes: Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes,
        #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Type
        # }
        # ```
        class UpdateIndividualApplication < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Type]
          required :type,
                   enum: -> { Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Type }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   annual_income: Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::AnnualIncome,
          #   occupation: Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::Occupation,
          #   source_of_income: Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::SourceOfIncome,
          #   tags: -> { Unit::HashOf[String] === _1 }
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute annual_income
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::AnnualIncome]
            optional :annual_income,
                     api_name: :annualIncome,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::AnnualIncome
                     }

            # @!attribute occupation
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::Occupation]
            optional :occupation,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::Occupation
                     }

            # @!attribute source_of_income
            #
            #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::SourceOfIncome]
            optional :source_of_income,
                     api_name: :sourceOfIncome,
                     enum: -> {
                       Unit::Models::ApplicationUpdateParams::Data::UpdateIndividualApplication::Attributes::SourceOfIncome
                     }

            # @!attribute tags
            #
            #   @return [Hash{Symbol => String}]
            optional :tags, Unit::HashOf[String]

            # @!parse
            #   # @param annual_income [String]
            #   # @param occupation [String]
            #   # @param source_of_income [String]
            #   # @param tags [Hash{Symbol => String}]
            #   #
            #   def initialize(annual_income: nil, occupation: nil, source_of_income: nil, tags: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
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
            #
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
            #
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
          #
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
        #
        # ```ruby
        # update_business_officer => {
        #   attributes: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes,
        #   type: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Type
        # }
        # ```
        class UpdateBusinessOfficer < Unit::BaseModel
          # @!attribute attributes
          #
          #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes]
          required :attributes,
                   -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes }

          # @!attribute type
          #
          #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Type]
          required :type,
                   enum: -> {
                     Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Type
                   }

          # @!parse
          #   # @param attributes [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes]
          #   # @param type [String]
          #   #
          #   def initialize(attributes:, type:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # attributes => {
          #   officer: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer
          # }
          # ```
          class Attributes < Unit::BaseModel
            # @!attribute officer
            #
            #   @return [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer]
            optional :officer,
                     -> { Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer }

            # @!parse
            #   # @param officer [Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer]
            #   #
            #   def initialize(officer: nil, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            #
            # ```ruby
            # officer => {
            #   annual_income: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::AnnualIncome,
            #   occupation: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::Occupation,
            #   source_of_income: Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::SourceOfIncome
            # }
            # ```
            class Officer < Unit::BaseModel
              # @!attribute annual_income
              #
              #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::AnnualIncome]
              optional :annual_income,
                       api_name: :annualIncome,
                       enum: -> {
                         Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::AnnualIncome
                       }

              # @!attribute occupation
              #
              #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::Occupation]
              optional :occupation,
                       enum: -> {
                         Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::Occupation
                       }

              # @!attribute source_of_income
              #
              #   @return [Symbol, Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::SourceOfIncome]
              optional :source_of_income,
                       api_name: :sourceOfIncome,
                       enum: -> {
                         Unit::Models::ApplicationUpdateParams::Data::UpdateBusinessOfficer::Attributes::Officer::SourceOfIncome
                       }

              # @!parse
              #   # @param annual_income [String]
              #   # @param occupation [String]
              #   # @param source_of_income [String]
              #   #
              #   def initialize(annual_income: nil, occupation: nil, source_of_income: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              #
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
              #
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
              #
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
          end

          # @example
          #
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
