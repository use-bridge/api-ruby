# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        class ServiceUpdateV2RequestMetadata < Internal::Types::Model
          field :example_key, -> { String }, optional: true, nullable: false, api_name: "exampleKey"
        end
      end
    end
  end
end
