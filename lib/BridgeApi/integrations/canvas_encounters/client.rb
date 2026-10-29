# frozen_string_literal: true

module BridgeApi
  module Integrations
    module CanvasEncounters
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Resolves or syncs a Bridge Service for a Canvas Encounter ID. One Encounter is one Service.
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.integrations.canvas_encounters.ensure_canvas_encounter_canvas_encounter(canvas_encounter_id: "canvasEncounterId")
        #
        # @return [BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1Response]
        def ensure_canvas_encounter_canvas_encounter(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/integrations/canvas/encounters",
            body: BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Integrations::CanvasEncounters::Types::CanvasEncounterEnsureCanvasEncounterV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
