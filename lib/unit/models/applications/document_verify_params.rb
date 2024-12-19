# frozen_string_literal: true

module Unit
  module Models
    module Applications
      class DocumentVerifyParams < Unit::BaseModel
        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String

        # @!attribute job_id
        #
        #   @return [String]
        optional :job_id, String, api_name: :jobId

        # @!parse
        #   # @param application_id [String]
        #   # @param job_id [String, nil]
        #   #
        #   def initialize(application_id:, job_id: nil, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
