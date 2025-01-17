# frozen_string_literal: true

module Unit
  module Models
    # @example
    # ```ruby
    # webhook_list_response => {
    #   data: -> { Unit::ArrayOf[Unit::Models::WebhookListResponse::Data] === _1 }
    # }
    # ```
    class WebhookListResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Array<Unit::Models::WebhookListResponse::Data>]
      optional :data, -> { Unit::ArrayOf[Unit::Models::WebhookListResponse::Data] }

      # @!parse
      #   # @param data [Array<Unit::Models::WebhookListResponse::Data>]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   attributes: Unit::Models::WebhookListResponse::Data::Attributes,
      #   type: enum: Unit::Models::WebhookListResponse::Data::Type
      # }
      # ```
      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookListResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::WebhookListResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::WebhookListResponse::Data::Type]
        required :type, enum: -> { Unit::Models::WebhookListResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::WebhookListResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        # ```ruby
        # attributes => {
        #   token: String,
        #   content_type: enum: Unit::Models::WebhookListResponse::Data::Attributes::ContentType,
        #   created_at: Time,
        #   delivery_mode: enum: Unit::Models::WebhookListResponse::Data::Attributes::DeliveryMode,
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
          #   @return [Symbol, Unit::Models::WebhookListResponse::Data::Attributes::ContentType]
          optional :content_type,
                   enum: -> { Unit::Models::WebhookListResponse::Data::Attributes::ContentType },
                   api_name: :contentType

          # @!attribute created_at
          #
          #   @return [Time]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute delivery_mode
          #
          #   @return [Symbol, Unit::Models::WebhookListResponse::Data::Attributes::DeliveryMode]
          optional :delivery_mode,
                   enum: -> { Unit::Models::WebhookListResponse::Data::Attributes::DeliveryMode },
                   api_name: :deliveryMode

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
