# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounter
      module Types
        module CanvasEncounterGetCanvasEncounterV1ResponseServiceTypeFieldProviderType
          # CanvasEncounterGetCanvasEncounterV1ResponseServiceTypeFieldProviderType is an alias for
          # CanvasEncounterGetCanvasEncounterV1ResponseServiceTypeFieldProviderTypesElement

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
