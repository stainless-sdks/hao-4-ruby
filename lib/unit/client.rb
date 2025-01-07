# frozen_string_literal: true

module Unit
  class Client < Unit::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Client option
    # @return [String, nil]
    attr_reader :bearer_token

    # @return [Unit::Resources::AccountEndOfDay]
    attr_reader :account_end_of_day

    # @return [Unit::Resources::Accounts]
    attr_reader :accounts

    # @return [Unit::Resources::ApplicationForms]
    attr_reader :application_forms

    # @return [Unit::Resources::Applications]
    attr_reader :applications

    # @return [Unit::Resources::AtmLocations]
    attr_reader :atm_locations

    # @return [Unit::Resources::AuthorizationRequests]
    attr_reader :authorization_requests

    # @return [Unit::Resources::Authorizations]
    attr_reader :authorizations

    # @return [Unit::Resources::BeneficialOwners]
    attr_reader :beneficial_owners

    # @return [Unit::Resources::Cards]
    attr_reader :cards

    # @return [Unit::Resources::CashDeposits]
    attr_reader :cash_deposits

    # @return [Unit::Resources::CheckDeposits]
    attr_reader :check_deposits

    # @return [Unit::Resources::CheckPayments]
    attr_reader :check_payments

    # @return [Unit::Resources::Counterparties]
    attr_reader :counterparties

    # @return [Unit::Resources::Customers]
    attr_reader :customers

    # @return [Unit::Resources::Disputes]
    attr_reader :disputes

    # @return [Unit::Resources::Events]
    attr_reader :events

    # @return [Unit::Resources::Fees]
    attr_reader :fees

    # @return [Unit::Resources::Institutions]
    attr_reader :institutions

    # @return [Unit::Resources::Payments]
    attr_reader :payments

    # @return [Unit::Resources::ReceivedPayments]
    attr_reader :received_payments

    # @return [Unit::Resources::RecurringPayments]
    attr_reader :recurring_payments

    # @return [Unit::Resources::RecurringRepayments]
    attr_reader :recurring_repayments

    # @return [Unit::Resources::Repayments]
    attr_reader :repayments

    # @return [Unit::Resources::Returns]
    attr_reader :returns

    # @return [Unit::Resources::Rewards]
    attr_reader :rewards

    # @return [Unit::Resources::Sandbox]
    attr_reader :sandbox

    # @return [Unit::Resources::Statements]
    attr_reader :statements

    # @return [Unit::Resources::StopPayments]
    attr_reader :stop_payments

    # @return [Unit::Resources::StoreLocations]
    attr_reader :store_locations

    # @return [Unit::Resources::TaxForms]
    attr_reader :tax_forms

    # @return [Unit::Resources::Transactions]
    attr_reader :transactions

    # @return [Unit::Resources::Users]
    attr_reader :users

    # @return [Unit::Resources::Webhooks]
    attr_reader :webhooks

    # @private
    #
    # @return [Hash{String => String}]
    #
    private def auth_headers
      {"Authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param bearer_token [String, nil] Bearer token used for authentication Defaults to `ENV["BEARER_TOKEN"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      bearer_token: ENV["BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.s.unit.sh"

      @bearer_token = bearer_token&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @account_end_of_day = Unit::Resources::AccountEndOfDay.new(client: self)
      @accounts = Unit::Resources::Accounts.new(client: self)
      @application_forms = Unit::Resources::ApplicationForms.new(client: self)
      @applications = Unit::Resources::Applications.new(client: self)
      @atm_locations = Unit::Resources::AtmLocations.new(client: self)
      @authorization_requests = Unit::Resources::AuthorizationRequests.new(client: self)
      @authorizations = Unit::Resources::Authorizations.new(client: self)
      @beneficial_owners = Unit::Resources::BeneficialOwners.new(client: self)
      @cards = Unit::Resources::Cards.new(client: self)
      @cash_deposits = Unit::Resources::CashDeposits.new(client: self)
      @check_deposits = Unit::Resources::CheckDeposits.new(client: self)
      @check_payments = Unit::Resources::CheckPayments.new(client: self)
      @counterparties = Unit::Resources::Counterparties.new(client: self)
      @customers = Unit::Resources::Customers.new(client: self)
      @disputes = Unit::Resources::Disputes.new(client: self)
      @events = Unit::Resources::Events.new(client: self)
      @fees = Unit::Resources::Fees.new(client: self)
      @institutions = Unit::Resources::Institutions.new(client: self)
      @payments = Unit::Resources::Payments.new(client: self)
      @received_payments = Unit::Resources::ReceivedPayments.new(client: self)
      @recurring_payments = Unit::Resources::RecurringPayments.new(client: self)
      @recurring_repayments = Unit::Resources::RecurringRepayments.new(client: self)
      @repayments = Unit::Resources::Repayments.new(client: self)
      @returns = Unit::Resources::Returns.new(client: self)
      @rewards = Unit::Resources::Rewards.new(client: self)
      @sandbox = Unit::Resources::Sandbox.new(client: self)
      @statements = Unit::Resources::Statements.new(client: self)
      @stop_payments = Unit::Resources::StopPayments.new(client: self)
      @store_locations = Unit::Resources::StoreLocations.new(client: self)
      @tax_forms = Unit::Resources::TaxForms.new(client: self)
      @transactions = Unit::Resources::Transactions.new(client: self)
      @users = Unit::Resources::Users.new(client: self)
      @webhooks = Unit::Resources::Webhooks.new(client: self)
    end
  end
end
