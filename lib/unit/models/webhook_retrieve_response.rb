# frozen_string_literal: true

module Unit
  module Models
    class WebhookRetrieveResponse < Unit::BaseModel
      # @!attribute data
      #
      #   @return [Unit::Models::WebhookRetrieveResponse::Data]
      optional :data, -> { Unit::Models::WebhookRetrieveResponse::Data }

      # @!parse
      #   # @param data [Unit::Models::WebhookRetrieveResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | Unit::BaseModel) -> void

      class Data < Unit::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attributes
        #
        #   @return [Unit::Models::WebhookRetrieveResponse::Data::Attributes]
        required :attributes, -> { Unit::Models::WebhookRetrieveResponse::Data::Attributes }

        # @!attribute type
        #
        #   @return [Symbol, Unit::Models::WebhookRetrieveResponse::Data::Type]
        required :type, enum: -> { Unit::Models::WebhookRetrieveResponse::Data::Type }

        # @!parse
        #   # @param id [String]
        #   # @param attributes [Unit::Models::WebhookRetrieveResponse::Data::Attributes]
        #   # @param type [String]
        #   #
        #   def initialize(id:, attributes:, type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        class Attributes < Unit::BaseModel
          # @!attribute token
          #
          #   @return [String]
          optional :token, String

          # @!attribute content_type
          #
          #   @return [Symbol, Unit::Models::WebhookRetrieveResponse::Data::Attributes::ContentType]
          optional :content_type,
                   api_name: :contentType,
                   enum: -> { Unit::Models::WebhookRetrieveResponse::Data::Attributes::ContentType }

          # @!attribute created_at
          #
          #   @return [Time]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute delivery_mode
          #
          #   @return [Symbol, Unit::Models::WebhookRetrieveResponse::Data::Attributes::DeliveryMode]
          optional :delivery_mode,
                   api_name: :deliveryMode,
                   enum: -> { Unit::Models::WebhookRetrieveResponse::Data::Attributes::DeliveryMode }

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
        # case enum
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
