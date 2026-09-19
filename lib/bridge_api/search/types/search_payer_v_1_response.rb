# frozen_string_literal: true

module Bridge_api
  module Search
    module Types
      class SearchPayerV1Response < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Bridge_api::Search::Types::SearchPayerV1ResponseItem] }, optional: false, nullable: false

        field :time, -> { Integer }, optional: true, nullable: false, api_name: "_time"
      end
    end
  end
end
