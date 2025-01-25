# frozen_string_literal: true

module Unit
  module Models
    module Applications
      class DocumentVerifyParams < Unit::BaseModel
        # @!parse
        #   extend Unit::RequestParameters::Converter
        include Unit::RequestParameters

        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String

        # @!attribute [r] job_id
        #
        #   @return [String, nil]
        optional :job_id, String, api_name: :jobId

        # @!parse
        #   # @return [String]
        #   attr_writer :job_id

        # @!parse
        #   # @param application_id [String]
        #   # @param job_id [String]
        #   # @param request_options [Unit::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(application_id:, job_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
