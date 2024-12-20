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

        class Attributes < Unit::BaseModel
          # @!attribute annual_income
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome]
          optional :annual_income,
                   api_name: :annualIncome,
                   enum: -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::AnnualIncome }

          # @!attribute occupation
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation]
          optional :occupation,
                   enum: -> {
                     Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::Occupation
                   }

          # @!attribute source_of_income
          #
          #   @return [Symbol, Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome]
          optional :source_of_income,
                   api_name: :sourceOfIncome,
                   enum: -> { Unit::Models::BeneficialOwnerUpdateParams::Data::Attributes::SourceOfIncome }

          # @!parse
          #   # @param annual_income [String, nil]
          #   # @param occupation [String, nil]
          #   # @param source_of_income [String, nil]
          #   #
          #   def initialize(annual_income: nil, occupation: nil, source_of_income: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

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

                finalize!
              end
            end
          end
        end

        # @example
        #
        # ```ruby
        # case enum
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
