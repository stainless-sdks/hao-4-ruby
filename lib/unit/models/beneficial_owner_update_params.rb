# frozen_string_literal: true

module Unit
  module Models
    class BeneficialOwnerUpdateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::BeneficialOwnerUpdateParams::Data]
      required :data, -> { Unit::Models::BeneficialOwnerUpdateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::BeneficialOwnerUpdateParams::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes,
      #   relationships: Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships,
      #   type: enum: Unit::Models::BeneficialOwnerUpdateParams::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes]
        required :attributes, -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes }

        # @!attribute relationships
        #
        #   @return [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships]
        required :relationships, -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Type]
        required :type, enum: -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Type }

        # @!parse
        #   # @param attributes [Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes]
        #   # @param relationships [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships]
        #   # @param type [String]
        #   #
        #   def initialize(attributes:, relationships:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   annual_income: enum: Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome,
        #   occupation: enum: Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation,
        #   source_of_income: enum: Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] annual_income
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome, nil]
          optional :annual_income,
                   enum: -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome },
                   api_name: :annualIncome

          # @!parse
          #   # @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome]
          #   attr_writer :annual_income

          # @!attribute [r] occupation
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation, nil]
          optional :occupation,
                   enum: -> {
                     Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation
                   }

          # @!parse
          #   # @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation]
          #   attr_writer :occupation

          # @!attribute [r] source_of_income
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome, nil]
          optional :source_of_income,
                   enum: -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome },
                   api_name: :sourceOfIncome

          # @!parse
          #   # @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome]
          #   attr_writer :source_of_income

          # @!parse
          #   # @param annual_income [String]
          #   # @param occupation [String]
          #   # @param source_of_income [String]
          #   #
          #   def initialize(annual_income: nil, occupation: nil, source_of_income: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

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
        # relationships => {
        #   application: Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application
        # }
        # ```
        class Relationships < Unit::BaseModel
          # @!attribute application
          #
          #   @return [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application]
          required :application,
                   -> {
                     Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application
                   }

          # @!parse
          #   # @param application [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application]
          #   #
          #   def initialize(application:, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # application => {
          #   data: Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data
          # }
          # ```
          class Application < Unit::BaseModel
            # @!attribute data
            #
            #   @return [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data]
            required :data,
                     -> {
                       Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data
                     }

            # @!parse
            #   # @param data [Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # data => {
            #   id: String,
            #   type: enum: Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data::Type
            # }
            # ```
            class Data < Unit::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data::Type]
              required :type,
                       enum: -> {
                         Unit::Models::BeneficialOwnerUpdateParams::Data::Relationships::Application::Data::Type
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

        # @example
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
    end
  end
end
