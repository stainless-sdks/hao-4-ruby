# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # webhook_create_response => {
    #   data: Unit::Models::WebhookCreateResponse::Data
    # }
    # ```
    class WebhookCreateResponse < Unit::BaseModel
      # @!attribute [r] data
      #
      #   @return [Unit::Models::WebhookCreateResponse::Data, nil]
      optional :data, -> { Unit::Models::WebhookCreateResponse::Data }

      # @!parse
      #   # @return [Unit::Models::WebhookCreateResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [Unit::Models::WebhookCreateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::WebhookCreateResponse::Data::Attributes,
      #   type: Unit::Models::WebhookCreateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookCreateResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::WebhookCreateResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::WebhookCreateResponse::Data::Type]
        required :type, enum: -> { Unit::Models::WebhookCreateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::WebhookCreateResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   token: String,
        #   content_type: Unit::Models::WebhookCreateResponse::Data::Attributes::ContentType,
        #   created_at: Time,
        #   delivery_mode: Unit::Models::WebhookCreateResponse::Data::Attributes::DeliveryMode,
        #   label: String,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute [r] token
          #
          #   @return [String, nil]
          optional :token, String

          # @!parse
          #   # @return [String]
          #   attr_writer :token

          # @!attribute [r] content_type
          #
          #   @return [Symbol, Unit::Models::WebhookCreateResponse::Data::Attributes::ContentType, nil]
          optional :content_type,
                   enum: -> { Unit::Models::WebhookCreateResponse::Data::Attributes::ContentType },
                   api_name: :contentType

          # @!parse
          #   # @return [Symbol, Unit::Models::WebhookCreateResponse::Data::Attributes::ContentType]
          #   attr_writer :content_type

          # @!attribute [r] created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!parse
          #   # @return [Time]
          #   attr_writer :created_at

          # @!attribute [r] delivery_mode
          #
          #   @return [Symbol, Unit::Models::WebhookCreateResponse::Data::Attributes::DeliveryMode, nil]
          optional :delivery_mode,
                   enum: -> { Unit::Models::WebhookCreateResponse::Data::Attributes::DeliveryMode },
                   api_name: :deliveryMode

          # @!parse
          #   # @return [Symbol, Unit::Models::WebhookCreateResponse::Data::Attributes::DeliveryMode]
          #   attr_writer :delivery_mode

          # @!attribute [r] label
          #
          #   @return [String, nil]
          optional :label, String

          # @!parse
          #   # @return [String]
          #   attr_writer :label

          # @!attribute [r] status
          #
          #   @return [String, nil]
          optional :status, String

          # @!parse
          #   # @return [String]
          #   attr_writer :status

          # @!attribute [r] subscription_type
          #
          #   @return [String, nil]
          optional :subscription_type, String, api_name: :subscriptionType

          # @!parse
          #   # @return [String]
          #   attr_writer :subscription_type

          # @!attribute [r] url
          #
          #   @return [String, nil]
          optional :url, String

          # @!parse
          #   # @return [String]
          #   attr_writer :url

          # @!parse
          #   # @param token [String]
          #   # @param content_type [String]
          #   # @param created_at [String]
          #   # @param delivery_mode [String]
          #   # @param label [String]
          #   # @param status [String]
          #   # @param subscription_type [String]
          #   # @param url [String]
          #   #
          #   def initialize(
          #     token: nil,
          #     content_type: nil,
          #     created_at: nil,
          #     delivery_mode: nil,
          #     label: nil,
          #     status: nil,
          #     subscription_type: nil,
          #     url: nil,
          #     **
          #   )
          #     super
          #   end

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
          # case delivery_mode
          # in :AtMostOnce
          #   # ...
          # in :AtLeastOnce
          #   # ...
          # end
          # ```
          class DeliveryMode < Unit::Enum
            AT_MOST_ONCE = :AtMostOnce
            AT_LEAST_ONCE = :AtLeastOnce

            finalize!
          end
        end

        # @example
        # ```ruby
        # case type
        # in :webhook
        #   # ...
        # end
        # ```
        class Type < Unit::Enum
          WEBHOOK = :webhook

          finalize!
        end
      end
    end
  end
end
