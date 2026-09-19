# frozen_string_literal: true

module Bridge_api
  module ConsentVersions
    module Types
      class ConsentVersionsListV1ResponseItem < Internal::Types::Model
        field :type, -> { Bridge_api::ConsentVersions::Types::ConsentVersionsListV1ResponseItemType }, optional: false, nullable: false

        field :version, -> { String }, optional: false, nullable: false
      end
    end
  end
end
