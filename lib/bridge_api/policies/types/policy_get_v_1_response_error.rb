# frozen_string_literal: true

module Bridge_api
  module Policies
    module Types
      class PolicyGetV1ResponseError < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
