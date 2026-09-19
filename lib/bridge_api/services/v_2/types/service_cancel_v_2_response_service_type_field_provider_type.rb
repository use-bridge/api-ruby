# frozen_string_literal: true

module Bridge_api
  module Services
    module V2
      module Types
        module ServiceCancelV2ResponseServiceTypeFieldProviderType
          # ServiceCancelV2ResponseServiceTypeFieldProviderType is an alias for
          # ServiceCancelV2ResponseServiceTypeFieldProviderTypesElement

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
