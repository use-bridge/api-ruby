# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      module NoteGetV1ResponseDataFieldAllergy
        # NoteGetV1ResponseDataFieldAllergy is an alias for String

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
