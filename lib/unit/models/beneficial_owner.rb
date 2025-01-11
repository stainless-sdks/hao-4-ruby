# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # beneficial_owner => {
    #   address: Unit::Models::BeneficialOwner::Address,
    #   annual_income: Unit::Models::BeneficialOwner::AnnualIncome,
    #   date_of_birth: Date,
    #   email: String,
    #   evaluation_codes: -> { Unit::ArrayOf[String] === _1 },
    #   **_
    # }
    # ```
    class BeneficialOwner < Unit::BaseModel
      # @!attribute address
      #
      #   @return [Unit::Models::BeneficialOwner::Address]
      optional :address, -> { Unit::Models::BeneficialOwner::Address }

      # @!attribute annual_income
      #
      #   @return [Symbol, Unit::Models::BeneficialOwner::AnnualIncome]
      optional :annual_income,
               api_name: :annualIncome,
               enum: -> {
                 Unit::Models::BeneficialOwner::AnnualIncome
               }

      # @!attribute date_of_birth
      #
      #   @return [Date]
      optional :date_of_birth, Date, api_name: :dateOfBirth

      # @!attribute email
      #
      #   @return [String]
      optional :email, String

      # @!attribute evaluation_codes
      #
      #   @return [Array<String>]
      optional :evaluation_codes, Unit::ArrayOf[String], api_name: :evaluationCodes

      # @!attribute evaluation_flags
      #
      #   @return [Array<String>]
      optional :evaluation_flags, Unit::ArrayOf[String], api_name: :evaluationFlags

      # @!attribute evaluation_id
      #
      #   @return [String]
      optional :evaluation_id, String, api_name: :evaluationId

      # @!attribute full_name
      #
      #   @return [Unit::Models::BeneficialOwner::FullName]
      optional :full_name, -> { Unit::Models::BeneficialOwner::FullName }, api_name: :fullName

      # @!attribute id_theft_score
      #
      #   @return [Integer]
      optional :id_theft_score, Integer, api_name: :idTheftScore

      # @!attribute masked_matricula_consular
      #
      #   @return [String]
      optional :masked_matricula_consular, String, api_name: :maskedMatriculaConsular

      # @!attribute masked_passport
      #
      #   @return [String]
      optional :masked_passport, String, api_name: :maskedPassport

      # @!attribute masked_ssn
      #
      #   @return [String]
      optional :masked_ssn, String, api_name: :maskedSSN

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
      #   @return [Symbol, Unit::Models::BeneficialOwner::Occupation]
      optional :occupation, enum: -> { Unit::Models::BeneficialOwner::Occupation }

      # @!attribute passport
      #
      #   @return [String]
      optional :passport, String

      # @!attribute percentage
      #
      #   @return [Integer]
      optional :percentage, Integer

      # @!attribute phone
      #
      #   @return [Unit::Models::BeneficialOwner::Phone]
      optional :phone, -> { Unit::Models::BeneficialOwner::Phone }

      # @!attribute source_of_income
      #
      #   @return [Symbol, Unit::Models::BeneficialOwner::SourceOfIncome]
      optional :source_of_income,
               api_name: :sourceOfIncome,
               enum: -> { Unit::Models::BeneficialOwner::SourceOfIncome }

      # @!attribute ssn
      #
      #   @return [String]
      optional :ssn, String

      # @!attribute status
      #
      #   @return [String]
      optional :status, String

      # @!parse
      #   # @param address [Unit::Models::BeneficialOwner::Address]
      #   # @param annual_income [String]
      #   # @param date_of_birth [String]
      #   # @param email [String]
      #   # @param evaluation_codes [Array<String>]
      #   # @param evaluation_flags [Array<String>]
      #   # @param evaluation_id [String]
      #   # @param full_name [Unit::Models::BeneficialOwner::FullName]
      #   # @param id_theft_score [Integer]
      #   # @param masked_matricula_consular [String]
      #   # @param masked_passport [String]
      #   # @param masked_ssn [String]
      #   # @param matricula_consular [String]
      #   # @param nationality [String]
      #   # @param occupation [String]
      #   # @param passport [String]
      #   # @param percentage [Integer]
      #   # @param phone [Unit::Models::BeneficialOwner::Phone]
      #   # @param source_of_income [String]
      #   # @param ssn [String]
      #   # @param status [String]
      #   #
      #   def initialize(
      #     address: nil,
      #     annual_income: nil,
      #     date_of_birth: nil,
      #     email: nil,
      #     evaluation_codes: nil,
      #     evaluation_flags: nil,
      #     evaluation_id: nil,
      #     full_name: nil,
      #     id_theft_score: nil,
      #     masked_matricula_consular: nil,
      #     masked_passport: nil,
      #     masked_ssn: nil,
      #     matricula_consular: nil,
      #     nationality: nil,
      #     occupation: nil,
      #     passport: nil,
      #     percentage: nil,
      #     phone: nil,
      #     source_of_income: nil,
      #     ssn: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
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
end
