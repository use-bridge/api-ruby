# frozen_string_literal: true

module Bridge_api
  module Consent
    class Client
      # @param client [Bridge_api::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.consent.list_patient_consents(id: "id")
      #
      # @return [Bridge_api::Consent::Types::PatientConsentsListV1Response]
      def list_patient_consents(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/patients/#{URI.encode_uri_component(params[:id].to_s)}/consent",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Consent::Types::PatientConsentsListV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Bridge_api::Consent::Types::PatientConsentCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.consent.create_patient_consent(
      #     id: "id",
      #     type: "ASSIGNMENT_OF_BENEFITS",
      #     version: "version",
      #     consented_at: "2024-01-15T09:30:00Z"
      #   )
      #
      # @return [Bridge_api::Consent::Types::PatientConsentCreateV1Response]
      def create_patient_consent(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/patients/#{URI.encode_uri_component(params[:id].to_s)}/consent",
          body: Bridge_api::Consent::Types::PatientConsentCreateV1Request.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Consent::Types::PatientConsentCreateV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
