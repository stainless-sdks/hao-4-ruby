# frozen_string_literal: true

module Unit
  module Models
    module Applications
      class DocumentMultipartParams < Unit::BaseModel
        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String

        # @!attribute file
        #
        #   @return [String]
        required :file, String

        # @!attribute file_type
        #
        #   @return [Symbol, Unit::Models::Applications::DocumentMultipartParams::FileType]
        required :file_type,
                 api_name: :fileType,
                 enum: -> { Unit::Models::Applications::DocumentMultipartParams::FileType }

        # @!parse
        #   # @param application_id [String]
        #   # @param file [String]
        #   # @param file_type [String]
        #   #
        #   def initialize(application_id:, file:, file_type:, **) = super

        # def initialize: (Hash | Unit::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case file_type
        # in :"application/pdf"
        #   # ...
        # in :"image/png"
        #   # ...
        # in :"image/jpeg"
        #   # ...
        # end
        # ```
        class FileType < Unit::Enum
          APPLICATION_PDF = :"application/pdf"
          IMAGE_PNG = :"image/png"
          IMAGE_JPEG = :"image/jpeg"

          finalize!
        end
      end
    end
  end
end
