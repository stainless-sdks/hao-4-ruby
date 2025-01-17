# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "json"
require "net/http"
require "securerandom"
require "set"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "unit/base_client"
require_relative "unit/base_model"
require_relative "unit/base_page"
require_relative "unit/errors"
require_relative "unit/pooled_net_requester"
require_relative "unit/request_options"
require_relative "unit/util"
require_relative "unit/version"
require_relative "unit/models/account_end_of_day_list_response"
require_relative "unit/models/account"
require_relative "unit/models/account_create_response"
require_relative "unit/models/account_retrieve_response"
require_relative "unit/models/account_update_response"
require_relative "unit/models/account_list_response"
require_relative "unit/models/account_activate_daca_response"
require_relative "unit/models/account_close_response"
require_relative "unit/models/account_deactivate_daca_response"
require_relative "unit/models/account_enter_daca_response"
require_relative "unit/models/account_freeze_response"
require_relative "unit/models/account_reopen_response"
require_relative "unit/models/account_unfreeze_response"
require_relative "unit/models/accounts/deposit_product_list_response"
require_relative "unit/models/accounts/limit_retrieve_response"
require_relative "unit/models/accounts/relationships/customer_add_response"
require_relative "unit/models/accounts/relationships/customer_remove_response"
require_relative "unit/models/accounts/repayment_information_retrieve_response"
require_relative "unit/models/accounts/transaction"
require_relative "unit/models/accounts/transaction_retrieve_response"
require_relative "unit/models/accounts/transaction_update_response"
require_relative "unit/models/application_form"
require_relative "unit/models/application_form_create_response"
require_relative "unit/models/application_form_retrieve_response"
require_relative "unit/models/application_form_list_response"
require_relative "unit/models/application"
require_relative "unit/models/application_create_response"
require_relative "unit/models/application_retrieve_response"
require_relative "unit/models/application_update_response"
require_relative "unit/models/application_list_response"
require_relative "unit/models/application_cancel_response"
require_relative "unit/models/applications/document_create_response"
require_relative "unit/models/applications/document_list_response"
require_relative "unit/models/applications/document_multipart_response"
require_relative "unit/models/applications/document_verify_response"
require_relative "unit/models/applications/documents/back_upload_response"
require_relative "unit/models/atm_location_list_response"
require_relative "unit/models/authorization_request"
require_relative "unit/models/authorization_request_retrieve_response"
require_relative "unit/models/authorization_request_list_response"
require_relative "unit/models/authorization_request_approve_response"
require_relative "unit/models/authorization_request_decline_response"
require_relative "unit/models/authorization"
require_relative "unit/models/authorization_retrieve_response"
require_relative "unit/models/authorization_list_response"
require_relative "unit/models/beneficial_owner"
require_relative "unit/models/beneficial_owner_update_response"
require_relative "unit/models/card"
require_relative "unit/models/card_create_response"
require_relative "unit/models/card_retrieve_response"
require_relative "unit/models/card_update_response"
require_relative "unit/models/card_list_response"
require_relative "unit/models/card_close_response"
require_relative "unit/models/card_freeze_response"
require_relative "unit/models/card_replace_response"
require_relative "unit/models/card_report_lost_response"
require_relative "unit/models/card_report_stolen_response"
require_relative "unit/models/card_unfreeze_response"
require_relative "unit/models/cards/limit_retrieve_response"
require_relative "unit/models/cards/secure_data/pin/status_retrieve_response"
require_relative "unit/models/cash_deposits/barcode_create_response"
require_relative "unit/models/check_deposit_create_response"
require_relative "unit/models/check_deposit_retrieve_response"
require_relative "unit/models/check_deposit_update_response"
require_relative "unit/models/check_deposit_list_response"
require_relative "unit/models/check_deposit_back_response"
require_relative "unit/models/check_deposit_confirm_response"
require_relative "unit/models/check_deposit_front_response"
require_relative "unit/models/check_payment_create_response"
require_relative "unit/models/check_payment_retrieve_response"
require_relative "unit/models/check_payment_list_response"
require_relative "unit/models/check_payment_approve_response"
require_relative "unit/models/check_payment_cancel_response"
require_relative "unit/models/check_payment_return_response"
require_relative "unit/models/counterparty_create_response"
require_relative "unit/models/counterparty_retrieve_response"
require_relative "unit/models/counterparty_update_response"
require_relative "unit/models/counterparty_list_response"
require_relative "unit/models/counterparties/balance_retrieve_response"
require_relative "unit/models/customer_retrieve_response"
require_relative "unit/models/customer_update_response"
require_relative "unit/models/customer_list_response"
require_relative "unit/models/customer_archive_response"
require_relative "unit/models/customers/authorized_user_create_response"
require_relative "unit/models/customers/authorized_user_delete_response"
require_relative "unit/models/customers/token_create_response"
require_relative "unit/models/customers/token/verification_create_response"
require_relative "unit/models/dispute_retrieve_response"
require_relative "unit/models/dispute_list_response"
require_relative "unit/models/event_retrieve_response"
require_relative "unit/models/event_list_response"
require_relative "unit/models/event_fire_response"
require_relative "unit/models/fee_create_response"
require_relative "unit/models/fee_reverse_response"
require_relative "unit/models/institution_retrieve_response"
require_relative "unit/models/payment_create_response"
require_relative "unit/models/payment_retrieve_response"
require_relative "unit/models/payment_update_response"
require_relative "unit/models/payment_list_response"
require_relative "unit/models/payment_cancel_response"
require_relative "unit/models/received_payment_retrieve_response"
require_relative "unit/models/received_payment_update_response"
require_relative "unit/models/received_payment_list_response"
require_relative "unit/models/received_payment_advance_response"
require_relative "unit/models/received_payment_reprocess_response"
require_relative "unit/models/recurring_payment_create_response"
require_relative "unit/models/recurring_payment_retrieve_response"
require_relative "unit/models/recurring_payment_list_response"
require_relative "unit/models/recurring_payment_disable_response"
require_relative "unit/models/recurring_payment_enable_response"
require_relative "unit/models/recurring_repayment_create_response"
require_relative "unit/models/recurring_repayment_retrieve_response"
require_relative "unit/models/recurring_repayment_list_response"
require_relative "unit/models/recurring_repayment_disable_response"
require_relative "unit/models/recurring_repayment_enable_response"
require_relative "unit/models/repayment_create_response"
require_relative "unit/models/repayment_retrieve_response"
require_relative "unit/models/repayment_list_response"
require_relative "unit/models/return_return_response"
require_relative "unit/models/reward_create_response"
require_relative "unit/models/reward_retrieve_response"
require_relative "unit/models/reward_list_response"
require_relative "unit/models/sandbox/atm_deposit_create_response"
require_relative "unit/models/sandbox/received_ach_payment_create_response"
require_relative "unit/models/sandbox/received_payment_create_response"
require_relative "unit/models/statement_list_response"
require_relative "unit/models/stop_payment"
require_relative "unit/models/stop_payment_list"
require_relative "unit/models/store_location_list_response"
require_relative "unit/models/tax_form_retrieve_response"
require_relative "unit/models/tax_form_list_response"
require_relative "unit/models/transaction_list_response"
require_relative "unit/models/users/api_token_create_response"
require_relative "unit/models/users/api_token_list_response"
require_relative "unit/models/users/api_token_delete_response"
require_relative "unit/models/webhook_create_response"
require_relative "unit/models/webhook_retrieve_response"
require_relative "unit/models/webhook_update_response"
require_relative "unit/models/webhook_list_response"
require_relative "unit/models/webhook_disable_response"
require_relative "unit/models/webhook_enable_response"
require_relative "unit/models/account_end_of_day_list_params"
require_relative "unit/models/account_create_params"
require_relative "unit/models/account_retrieve_params"
require_relative "unit/models/account_update_params"
require_relative "unit/models/account_list_params"
require_relative "unit/models/account_activate_daca_params"
require_relative "unit/models/account_close_params"
require_relative "unit/models/account_deactivate_daca_params"
require_relative "unit/models/account_enter_daca_params"
require_relative "unit/models/account_freeze_params"
require_relative "unit/models/account_reopen_params"
require_relative "unit/models/account_unfreeze_params"
require_relative "unit/models/accounts/deposit_product_list_params"
require_relative "unit/models/accounts/limit_retrieve_params"
require_relative "unit/models/accounts/relationships/customer_add_params"
require_relative "unit/models/accounts/relationships/customer_remove_params"
require_relative "unit/models/accounts/repayment_information_retrieve_params"
require_relative "unit/models/accounts/transaction_retrieve_params"
require_relative "unit/models/accounts/transaction_update_params"
require_relative "unit/models/application_form_create_params"
require_relative "unit/models/application_form_retrieve_params"
require_relative "unit/models/application_form_list_params"
require_relative "unit/models/application_create_params"
require_relative "unit/models/application_retrieve_params"
require_relative "unit/models/application_update_params"
require_relative "unit/models/application_list_params"
require_relative "unit/models/application_cancel_params"
require_relative "unit/models/applications/document_create_params"
require_relative "unit/models/applications/document_list_params"
require_relative "unit/models/applications/document_download_params"
require_relative "unit/models/applications/document_download_back_params"
require_relative "unit/models/applications/document_multipart_params"
require_relative "unit/models/applications/document_verify_params"
require_relative "unit/models/applications/documents/back_upload_params"
require_relative "unit/models/atm_location_list_params"
require_relative "unit/models/authorization_request_retrieve_params"
require_relative "unit/models/authorization_request_list_params"
require_relative "unit/models/authorization_request_approve_params"
require_relative "unit/models/authorization_request_decline_params"
require_relative "unit/models/authorization_retrieve_params"
require_relative "unit/models/authorization_list_params"
require_relative "unit/models/beneficial_owner_update_params"
require_relative "unit/models/card_create_params"
require_relative "unit/models/card_retrieve_params"
require_relative "unit/models/card_update_params"
require_relative "unit/models/card_list_params"
require_relative "unit/models/card_close_params"
require_relative "unit/models/card_freeze_params"
require_relative "unit/models/card_replace_params"
require_relative "unit/models/card_report_lost_params"
require_relative "unit/models/card_report_stolen_params"
require_relative "unit/models/card_unfreeze_params"
require_relative "unit/models/cards/limit_retrieve_params"
require_relative "unit/models/cards/secure_data/pin/status_retrieve_params"
require_relative "unit/models/cash_deposits/barcode_create_params"
require_relative "unit/models/cash_deposits/barcodes/image_retrieve_params"
require_relative "unit/models/check_deposit_create_params"
require_relative "unit/models/check_deposit_retrieve_params"
require_relative "unit/models/check_deposit_update_params"
require_relative "unit/models/check_deposit_list_params"
require_relative "unit/models/check_deposit_back_params"
require_relative "unit/models/check_deposit_confirm_params"
require_relative "unit/models/check_deposit_front_params"
require_relative "unit/models/check_payment_create_params"
require_relative "unit/models/check_payment_retrieve_params"
require_relative "unit/models/check_payment_list_params"
require_relative "unit/models/check_payment_approve_params"
require_relative "unit/models/check_payment_back_params"
require_relative "unit/models/check_payment_cancel_params"
require_relative "unit/models/check_payment_front_params"
require_relative "unit/models/check_payment_return_params"
require_relative "unit/models/counterparty_create_params"
require_relative "unit/models/counterparty_retrieve_params"
require_relative "unit/models/counterparty_update_params"
require_relative "unit/models/counterparty_list_params"
require_relative "unit/models/counterparty_delete_params"
require_relative "unit/models/counterparties/balance_retrieve_params"
require_relative "unit/models/customer_retrieve_params"
require_relative "unit/models/customer_update_params"
require_relative "unit/models/customer_list_params"
require_relative "unit/models/customer_archive_params"
require_relative "unit/models/customers/authorized_user_create_params"
require_relative "unit/models/customers/authorized_user_delete_params"
require_relative "unit/models/customers/token_create_params"
require_relative "unit/models/customers/token/verification_create_params"
require_relative "unit/models/dispute_retrieve_params"
require_relative "unit/models/dispute_list_params"
require_relative "unit/models/event_retrieve_params"
require_relative "unit/models/event_list_params"
require_relative "unit/models/event_fire_params"
require_relative "unit/models/fee_create_params"
require_relative "unit/models/fee_reverse_params"
require_relative "unit/models/institution_retrieve_params"
require_relative "unit/models/payment_create_params"
require_relative "unit/models/payment_retrieve_params"
require_relative "unit/models/payment_update_params"
require_relative "unit/models/payment_list_params"
require_relative "unit/models/payment_cancel_params"
require_relative "unit/models/received_payment_retrieve_params"
require_relative "unit/models/received_payment_update_params"
require_relative "unit/models/received_payment_list_params"
require_relative "unit/models/received_payment_advance_params"
require_relative "unit/models/received_payment_reprocess_params"
require_relative "unit/models/recurring_payment_create_params"
require_relative "unit/models/recurring_payment_retrieve_params"
require_relative "unit/models/recurring_payment_list_params"
require_relative "unit/models/recurring_payment_disable_params"
require_relative "unit/models/recurring_payment_enable_params"
require_relative "unit/models/recurring_repayment_create_params"
require_relative "unit/models/recurring_repayment_retrieve_params"
require_relative "unit/models/recurring_repayment_list_params"
require_relative "unit/models/recurring_repayment_disable_params"
require_relative "unit/models/recurring_repayment_enable_params"
require_relative "unit/models/repayment_create_params"
require_relative "unit/models/repayment_retrieve_params"
require_relative "unit/models/repayment_list_params"
require_relative "unit/models/return_return_params"
require_relative "unit/models/reward_create_params"
require_relative "unit/models/reward_retrieve_params"
require_relative "unit/models/reward_list_params"
require_relative "unit/models/sandbox/atm_deposit_create_params"
require_relative "unit/models/sandbox/card_activate_params"
require_relative "unit/models/sandbox/received_ach_payment_create_params"
require_relative "unit/models/sandbox/received_payment_create_params"
require_relative "unit/models/statement_list_params"
require_relative "unit/models/statements/bank_pdf_retrieve_params"
require_relative "unit/models/statements/html_retrieve_params"
require_relative "unit/models/statements/pdf_retrieve_params"
require_relative "unit/models/stop_payment_create_params"
require_relative "unit/models/stop_payment_retrieve_params"
require_relative "unit/models/stop_payment_list_params"
require_relative "unit/models/stop_payment_disable_params"
require_relative "unit/models/store_location_list_params"
require_relative "unit/models/tax_form_retrieve_params"
require_relative "unit/models/tax_form_list_params"
require_relative "unit/models/tax_form_pdf_params"
require_relative "unit/models/transaction_list_params"
require_relative "unit/models/users/api_token_create_params"
require_relative "unit/models/users/api_token_list_params"
require_relative "unit/models/users/api_token_delete_params"
require_relative "unit/models/webhook_create_params"
require_relative "unit/models/webhook_retrieve_params"
require_relative "unit/models/webhook_update_params"
require_relative "unit/models/webhook_list_params"
require_relative "unit/models/webhook_disable_params"
require_relative "unit/models/webhook_enable_params"
require_relative "unit/client"
require_relative "unit/resources/account_end_of_day"
require_relative "unit/resources/accounts"
require_relative "unit/resources/accounts/deposit_products"
require_relative "unit/resources/accounts/limits"
require_relative "unit/resources/accounts/relationships"
require_relative "unit/resources/accounts/relationships/customers"
require_relative "unit/resources/accounts/repayment_information"
require_relative "unit/resources/accounts/transactions"
require_relative "unit/resources/application_forms"
require_relative "unit/resources/applications"
require_relative "unit/resources/applications/documents"
require_relative "unit/resources/applications/documents/back"
require_relative "unit/resources/atm_locations"
require_relative "unit/resources/authorization_requests"
require_relative "unit/resources/authorizations"
require_relative "unit/resources/beneficial_owners"
require_relative "unit/resources/cards"
require_relative "unit/resources/cards/limits"
require_relative "unit/resources/cards/secure_data"
require_relative "unit/resources/cards/secure_data/pin"
require_relative "unit/resources/cards/secure_data/pin/status"
require_relative "unit/resources/cash_deposits"
require_relative "unit/resources/cash_deposits/barcodes"
require_relative "unit/resources/cash_deposits/barcodes/image"
require_relative "unit/resources/check_deposits"
require_relative "unit/resources/check_payments"
require_relative "unit/resources/counterparties"
require_relative "unit/resources/counterparties/balance"
require_relative "unit/resources/customers"
require_relative "unit/resources/customers/authorized_users"
require_relative "unit/resources/customers/token"
require_relative "unit/resources/customers/token/verification"
require_relative "unit/resources/disputes"
require_relative "unit/resources/events"
require_relative "unit/resources/fees"
require_relative "unit/resources/institutions"
require_relative "unit/resources/payments"
require_relative "unit/resources/received_payments"
require_relative "unit/resources/recurring_payments"
require_relative "unit/resources/recurring_repayments"
require_relative "unit/resources/repayments"
require_relative "unit/resources/returns"
require_relative "unit/resources/rewards"
require_relative "unit/resources/sandbox"
require_relative "unit/resources/sandbox/atm_deposits"
require_relative "unit/resources/sandbox/cards"
require_relative "unit/resources/sandbox/received_ach_payment"
require_relative "unit/resources/sandbox/received_payments"
require_relative "unit/resources/statements"
require_relative "unit/resources/statements/bank_pdf"
require_relative "unit/resources/statements/html"
require_relative "unit/resources/statements/pdf"
require_relative "unit/resources/stop_payments"
require_relative "unit/resources/store_locations"
require_relative "unit/resources/tax_forms"
require_relative "unit/resources/transactions"
require_relative "unit/resources/users"
require_relative "unit/resources/users/api_tokens"
require_relative "unit/resources/webhooks"
