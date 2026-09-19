# frozen_string_literal: true

module BridgeApi
  module ConsentVersions
    module Types
      class ConsentVersionsListV1ResponseItem < Internal::Types::Model
        field :type, -> { BridgeApi::ConsentVersions::Types::ConsentVersionsListV1ResponseItemType }, optional: false, nullable: false

        field :version, -> { String }, optional: false, nullable: false
      end
    end
  end
end
