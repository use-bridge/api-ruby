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

      # @return [BridgeApi::CanvasPatient::Client]
      def canvas_patient
        @canvas_patient ||= BridgeApi::Integrations::CanvasPatient::Client.new(client: @client)
      end

      # @return [BridgeApi::CanvasPatients::Client]
      def canvas_patients
        @canvas_patients ||= BridgeApi::Integrations::CanvasPatients::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthiePatient::Client]
      def healthie_patient
        @healthie_patient ||= BridgeApi::Integrations::HealthiePatient::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthiePatients::Client]
      def healthie_patients
        @healthie_patients ||= BridgeApi::Integrations::HealthiePatients::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthieService::Client]
      def healthie_service
        @healthie_service ||= BridgeApi::Integrations::HealthieService::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthieServices::Client]
      def healthie_services
        @healthie_services ||= BridgeApi::Integrations::HealthieServices::Client.new(client: @client)
      end
    end
  end
end
