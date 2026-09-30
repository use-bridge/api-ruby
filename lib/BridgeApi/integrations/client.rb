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

      # @return [BridgeApi::HealthiePatient::Client]
      def healthie_patient
        @healthie_patient ||= BridgeApi::Integrations::HealthiePatient::Client.new(client: @client)
      end

      # @return [BridgeApi::HealthiePatients::Client]
      def healthie_patients
        @healthie_patients ||= BridgeApi::Integrations::HealthiePatients::Client.new(client: @client)
      end
    end
  end
end
