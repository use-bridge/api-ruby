# frozen_string_literal: true

module Bridge_api
  module ServiceTypes
    module Types
      class ServiceTypesListV1Request < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
