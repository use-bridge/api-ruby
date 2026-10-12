# frozen_string_literal: true

module BridgeApi
  module Integrations
    module HealthieService
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the linked Bridge Service for a Healthie appointment id.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.integrations.healthie_service.get_healthie_appointment_healthie_service(id: "id")
        #
        # @return [BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1Response]
        def get_healthie_appointment_healthie_service(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "/api/integrations/healthie/services/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Integrations::HealthieService::Types::HealthieServiceGetHealthieAppointmentV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
