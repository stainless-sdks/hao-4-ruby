# frozen_string_literal: true

module Unit
  module Models
    module Applications
      class DocumentDownloadParams < Unit::BaseModel
        # @!parse
        #   extend Unit::RequestParameters::Converter
        include Unit::RequestParameters

        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String

        # @!parse
        #   # @param application_id [String]
        #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(application_id:, request_options: {}, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
