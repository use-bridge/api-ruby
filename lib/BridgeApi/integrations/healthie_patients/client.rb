# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthiePatients
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Resolves or syncs a Bridge Patient for a Healthie client id. Returns the same shape as Patient create
        # (including a fresh patient token).
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Integrations::HealthiePatients::Types::HealthiePatientEnsureHealthieClientV1Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.integrations.healthie_patients.ensure_healthie_client_healthie_patient(healthie_client_id: "healthieClientId")
        #
        # @return [BridgeApi::Integrations::HealthiePatients::Types::HealthiePatientEnsureHealthieClientV1Response]
        def ensure_healthie_client_healthie_patient(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/integrations/healthie/patients",
            body: BridgeApi::Integrations::HealthiePatients::Types::HealthiePatientEnsureHealthieClientV1Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Integrations::HealthiePatients::Types::HealthiePatientEnsureHealthieClientV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
