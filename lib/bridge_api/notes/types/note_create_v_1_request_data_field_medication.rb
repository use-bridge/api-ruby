# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      module NoteCreateV1RequestDataFieldMedication
        # NoteCreateV1RequestDataFieldMedication is an alias for String

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
