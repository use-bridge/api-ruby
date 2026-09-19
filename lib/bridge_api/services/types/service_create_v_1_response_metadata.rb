# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceCreateV1ResponseMetadata < Internal::Types::Model
        field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
      end
    end
  end
end
