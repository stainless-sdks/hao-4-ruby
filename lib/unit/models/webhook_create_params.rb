# frozen_string_literal: true

module Unit
  module Models
    class WebhookCreateParams < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::WebhookCreateParams::Data]
      optional :data, -> { Unit::Models::WebhookCreateParams::Data }

      # @!parse
      #   # @param data [Unit::Models::WebhookCreateParams::Data, nil]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookCreateParams::Data::Attributes]
        optional :attributes, -> { Unit::Models::WebhookCreateParams::Data::Attributes }

        # @!attribute type
        #
        #   @return [String]
        optional :type, String

        # @!parse
        #   # @param attributes [Unit::Models::WebhookCreateParams::Data::Attributes, nil]
        #   # @param type [String, nil]
        #   #
        #   def initialize(attributes: nil, type: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute token
          #
          #   @return [String]
          required :token, String

          # @!attribute content_type
          #
          #   @return [Symbol, Unit::Models::WebhookCreateParams::Data::Attributes::ContentType]
          required :content_type,
                   api_name: :contentType,
                   enum: -> { Unit::Models::WebhookCreateParams::Data::Attributes::ContentType }

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

          # @!attribute include_resources
          #
          #   @return [Boolean]
          optional :include_resources, Unit::BooleanModel, api_name: :includeResources

          # @!attribute subscription_type
          #
          #   @return [Symbol, Unit::Models::WebhookCreateParams::Data::Attributes::SubscriptionType]
          optional :subscription_type,
                   api_name: :subscriptionType,
                   enum: -> { Unit::Models::WebhookCreateParams::Data::Attributes::SubscriptionType }

          # @!parse
          #   # @param token [String]
          #   # @param content_type [String]
          #   # @param delivery_mode [String]
          #   # @param label [String]
          #   # @param url [String]
          #   # @param include_resources [Boolean, nil]
          #   # @param subscription_type [String, nil]
          #   #
          #   def initialize(token:, content_type:, delivery_mode:, label:, url:, include_resources: nil, subscription_type: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
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
          #
          # ```ruby
          # case enum
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
