# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieServices
      module Types
        module HealthieServiceEnsureHealthieAppointmentV1ResponseServiceTypeFieldProviderType
          # HealthieServiceEnsureHealthieAppointmentV1ResponseServiceTypeFieldProviderType is an alias for
          # HealthieServiceEnsureHealthieAppointmentV1ResponseServiceTypeFieldProviderTypesElement

          # @option str [String]
          #
          # @return [untyped]
          def self.load(str)
            ::JSON.parse(str)
          end

          # @option value [untyped]
          #
          # @return [String]
          def self.dump(value)
            ::JSON.generate(value)
          end
        end
      end
    end
  end
end
