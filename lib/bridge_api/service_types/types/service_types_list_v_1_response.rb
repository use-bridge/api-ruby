# frozen_string_literal: true

module Bridge_api
  module ServiceTypes
    module Types
      class ServiceTypesListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::ServiceTypes::Types::ServiceTypesListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
