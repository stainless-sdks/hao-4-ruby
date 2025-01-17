# frozen_string_literal: true

module Unit
  module Models
    module Customers
      module Token
        class VerificationCreateParams < Unit::BaseModel
          # @!attribute data
          #
          #   @return [Unit::Models::Customers::Token::VerificationCreateParams::Data]
          optional :data, -> { Unit::Models::Customers::Token::VerificationCreateParams::Data }

          # @!parse
          #   # @param data [Unit::Models::Customers::Token::VerificationCreateParams::Data]
          #   #
          #   def initialize(data: nil, **) = super

          # def initialize: (Hash | Unit::BaseModel) -> void

          # @example
          # ```ruby
          # data => {
          #   attributes: Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes,
          #   type: enum: Unit::Models::Customers::Token::VerificationCreateParams::Data::Type
          # }
          # ```
          class Data < Unit::BaseModel
            # @!attribute attributes
            #
            #   @return [Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes]
            required :attributes,
                     -> {
                       Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes
                     }

            # @!attribute type
            #
            #   @return [Symbol, Unit::Models::Customers::Token::VerificationCreateParams::Data::Type]
            required :type, enum: -> { Unit::Models::Customers::Token::VerificationCreateParams::Data::Type }

            # @!parse
            #   # @param attributes [Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes]
            #   # @param type [String]
            #   #
            #   def initialize(attributes:, type:, **) = super

            # def initialize: (Hash | Unit::BaseModel) -> void

            # @example
            # ```ruby
            # attributes => {
            #   channel: enum: Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Channel,
            #   app_hash: String,
            #   language: enum: Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Language,
            #   phone: Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Phone
            # }
            # ```
            class Attributes < Unit::BaseModel
              # @!attribute channel
              #
              #   @return [Symbol, Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Channel]
              required :channel,
                       enum: -> {
                         Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Channel
                       }

              # @!attribute app_hash
              #
              #   @return [String]
              optional :app_hash, String, api_name: :appHash

              # @!attribute language
              #
              #   @return [Symbol, Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Language]
              optional :language,
                       enum: -> {
                         Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Language
                       }

              # @!attribute phone
              #
              #   @return [Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Phone]
              optional :phone,
                       -> {
                         Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Phone
                       }

              # @!parse
              #   # @param channel [String]
              #   # @param app_hash [String]
              #   # @param language [String]
              #   # @param phone [Unit::Models::Customers::Token::VerificationCreateParams::Data::Attributes::Phone]
              #   #
              #   def initialize(channel:, app_hash: nil, language: nil, phone: nil, **) = super

              # def initialize: (Hash | Unit::BaseModel) -> void

              # @example
              # ```ruby
              # case channel
              # in :sms
              #   # ...
              # in :call
              #   # ...
              # end
              # ```
              class Channel < Unit::Enum
                SMS = :sms
                CALL = :call

                finalize!
              end

              # @example
              # ```ruby
              # case language
              # in :en
              #   # ...
              # in :af
              #   # ...
              # in :ar
              #   # ...
              # in :ca
              #   # ...
              # in :zh
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class Language < Unit::Enum
                EN = :en
                AF = :af
                AR = :ar
                CA = :ca
                ZH = :zh
                ZH_CN = :"zh-CN"
                ZH_HK = :"zh-HK"
                HR = :hr
                CS = :cs
                DA = :da
                NL = :nl
                EN_GB = :"en-GB"
                ET = :et
                FI = :fi
                FR = :fr
                DE = :de
                EL = :el
                HE = :he
                HI = :hi
                HU = :hu
                ID = :id
                IT = :it
                JA = :ja
                KN = :kn
                KO = :ko
                MS = :ms
                MR = :mr
                NB = :nb
                PL = :pl
                PT_BR = :"pt-BR"
                PT = :pt
                RO = :ro
                RU = :ru
                SK = :sk
                ES = :es
                SV = :sv
                TL = :tl
                TE = :te
                TH = :th
                TR = :tr
                VI = :vi

                finalize!
              end

              # @example
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
            end

            # @example
            # ```ruby
            # case type
            # in :customerTokenVerification
            #   # ...
            # end
            # ```
            class Type < Unit::Enum
              CUSTOMER_TOKEN_VERIFICATION = :customerTokenVerification

              finalize!
            end
          end
        end
      end
    end
  end
end
