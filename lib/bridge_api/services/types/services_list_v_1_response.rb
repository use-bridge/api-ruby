# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServicesListV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Services::Types::ServicesListV1ResponseItem] }, optional: false, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
