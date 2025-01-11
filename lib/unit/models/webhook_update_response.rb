# frozen_string_literal: true

module Unit
  module Models
    # @example
    #
    # ```ruby
    # webhook_update_response => {
    #   data: Unit::Models::WebhookUpdateResponse::Data
    # }
    # ```
    class WebhookUpdateResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::WebhookUpdateResponse::Data]
      optional :data, -> { Unit::Models::WebhookUpdateResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::WebhookUpdateResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::WebhookUpdateResponse::Data::Attributes,
      #   type: Unit::Models::WebhookUpdateResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookUpdateResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::WebhookUpdateResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::WebhookUpdateResponse::Data::Type]
        required :type, enum: -> { Unit::Models::WebhookUpdateResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::WebhookUpdateResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # attributes => {
        #   token: String,
        #   content_type: Unit::Models::WebhookUpdateResponse::Data::Attributes::ContentType,
        #   created_at: Time,
        #   delivery_mode: Unit::Models::WebhookUpdateResponse::Data::Attributes::DeliveryMode,
        #   label: String,
        #   **_
        # }
        # ```
        class Attributes < Unit::BaseModel
          # @!attribute token
          #
          #   @return [String]
          optional :token, String

          # @!attribute content_type
          #
          #   @return [Symbol, Unit::Models::WebhookUpdateResponse::Data::Attributes::ContentType]
          optional :content_type,
                   api_name: :contentType,
                   enum: -> { Unit::Models::WebhookUpdateResponse::Data::Attributes::ContentType }

          # @!attribute created_at
          #
          #   @return [Time]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute delivery_mode
          #
          #   @return [Symbol, Unit::Models::WebhookUpdateResponse::Data::Attributes::DeliveryMode]
          optional :delivery_mode,
                   api_name: :deliveryMode,
                   enum: -> { Unit::Models::WebhookUpdateResponse::Data::Attributes::DeliveryMode }

          # @!attribute label
          #
          #   @return [String]
          optional :label, String

          # @!attribute status
          #
          #   @return [String]
          optional :status, String

          # @!attribute subscription_type
          #
          #   @return [String]
          optional :subscription_type, String, api_name: :subscriptionType

          # @!attribute url
          #
          #   @return [String]
          optional :url, String

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
          #
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
          #
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
        #
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
