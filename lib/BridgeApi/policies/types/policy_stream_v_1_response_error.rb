# frozen_string_literal: true

module BridgeApi
  module Policies
    module Types
      class PolicyStreamV1ResponseError < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
