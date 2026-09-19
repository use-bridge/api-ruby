# frozen_string_literal: true

module BridgeApi
  module Notes
    module Types
      class NoteAddendaListV1ResponseItemDataFieldMonitoringDatum < Internal::Types::Model
        field :date, -> { String }, optional: false, nullable: false

        field :values, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
