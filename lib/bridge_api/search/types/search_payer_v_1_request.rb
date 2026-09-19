# frozen_string_literal: true

module Bridge_api
  module Search
    module Types
      class SearchPayerV1Request < Internal::Types::Model
        field :query, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
