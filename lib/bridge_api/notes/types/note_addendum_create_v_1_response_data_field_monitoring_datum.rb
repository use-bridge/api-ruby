# frozen_string_literal: true

module Bridge_api
  module Notes
    module Types
      class NoteAddendumCreateV1ResponseDataFieldMonitoringDatum < Internal::Types::Model
        field :date, -> { String }, optional: false, nullable: false

        field :values, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
