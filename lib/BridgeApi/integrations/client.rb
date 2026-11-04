# frozen_string_literal: true

module BridgeApi
  module Integrations
    class Client
      # @param client [BridgeApi::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [BridgeApi::CanvasEncounters::Client]
      def canvas_encounters
        @canvas_encounters ||= BridgeApi::Integrations::CanvasEncounters::Client.new(client: @client)
      end

      # @return [BridgeApi::CanvasPatients::Client]
      def canvas_patients
        @canvas_patients ||= BridgeApi::Integrations::CanvasPatients::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthiePatients::Client]
      def healthie_patients
        @healthie_patients ||= BridgeApi::Integrations::HealthiePatients::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthieServices::Client]
      def healthie_services
        @healthie_services ||= BridgeApi::Integrations::HealthieServices::Client.new(client: @client)
      end
    end
  end
end
