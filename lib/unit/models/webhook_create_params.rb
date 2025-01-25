# frozen_string_literal: true

module Unit
  module Models
    class WebhookCreateParams < Unit::BaseModel
      # @!parse
      #   extend Unit::RequestParameters::Converter
      include Unit::RequestParameters

      # @!attribute [r] data
      #
      #   @return [Unit::Models::WebhookCreateParams::Data, nil]
      optional :data, -> { Unit::Models::WebhookCreateParams::Data }

      # @!parse
      #   # @return [Unit::Models::WebhookCreateParams::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::WebhookCreateParams::Data]
      #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(data: nil, request_options: {}, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   attributes: Unit::Models::WebhookCreateParams::Data::Attributes,
      #   type: String
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute [r] attributes
        #
        #   @return [Unit::Models::WebhookCreateParams::Data::Attributes, nil]
        optional :attributes, -> { Unit::Models::WebhookCreateParams::Data::Attributes }

        # @!parse
        #   # @return [Unit::Models::WebhookCreateParams::Data::Attributes]
        #   attr_writer :attributes

        # @!attribute [r] type
        #
        #   @return [String, nil]
        optional :type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :type

        # @!parse
        #   # @param attributes [Unit::Models::WebhookCreateParams::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   token: String,
        #   content_type: Unit::Models::WebhookCreateParams::Data::Attributes::ContentType,
        #   delivery_mode: String,
        #   label: String,
        #   url: String,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute token
          #
          #   @return [String]
          required :token, String

          # @!attribute content_type
          #
          #   @return [Symbol, Unit::Models::WebhookCreateParams::Data::Attributes::ContentType]
          required :content_type,
                   enum: -> { Unit::Models::WebhookCreateParams::Data::Attributes::ContentType },
                   api_name: :contentType

          # @!attribute delivery_mode
          #
          #   @return [String]
          required :delivery_mode, String, api_name: :deliveryMode

          # @!attribute label
          #
          #   @return [String]
          required :label, String

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute [r] include_resources
          #
          #   @return [Boolean, nil]
          optional :include_resources, Unit::BooleanModel, api_name: :includeResources

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :include_resources

          # @!attribute [r] subscription_type
          #
          #   @return [Symbol, Unit::Models::WebhookCreateParams::Data::Attributes::SubscriptionType, nil]
          optional :subscription_type,
                   enum: -> { Unit::Models::WebhookCreateParams::Data::Attributes::SubscriptionType },
                   api_name: :subscriptionType

          # @!parse
          #   # @return [Symbol, Unit::Models::WebhookCreateParams::Data::Attributes::SubscriptionType]
          #   attr_writer :subscription_type

          # @!parse
          #   # @param token [String]
          #   # @param content_type [String]
          #   # @param delivery_mode [String]
          #   # @param label [String]
          #   # @param url [String]
          #   # @param include_resources [Boolean]
          #   # @param subscription_type [String]
          #   #
          #   def initialize(token:, content_type:, delivery_mode:, label:, url:, include_resources: nil, subscription_type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # case content_type
          # in :Json
          #   # ...
          # in :JsonAPI
          #   # ...
          # end
          # ```
          class ContentType < Unit::Enum
            JSON = :Json
            JSON_API = :JsonAPI

            finalize!
          end

          # @example
          # ```ruby
          # case subscription_type
          # in :All
          #   # ...
          # in :OnlyAuthorizationRequest
          #   # ...
          # end
          # ```
          class SubscriptionType < Unit::Enum
            ALL = :All
            ONLY_AUTHORIZATION_REQUEST = :OnlyAuthorizationRequest

            finalize!
          end
        end
      end
    end
  end
end
