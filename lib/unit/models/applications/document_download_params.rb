# frozen_string_literal: true

module Unit
  module Models
    module Applications
      class DocumentDownloadParams < Unit::BaseModel
        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String

        # @!parse
        #   # @param application_id [String]
        #   #
        #   def initialize(application_id:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void
      end
    end
  end
end
