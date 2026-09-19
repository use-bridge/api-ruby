# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      module Types
        module ServiceUpdateV2ResponseServiceTypeFieldProviderType
          # ServiceUpdateV2ResponseServiceTypeFieldProviderType is an alias for
          # ServiceUpdateV2ResponseServiceTypeFieldProviderTypesElement

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
