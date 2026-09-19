# frozen_string_literal: true

module BridgeApi
  module PatientToken
    class Client
      # @param client [BridgeApi::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [BridgeApi::PatientToken::Types::PatientTokenCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.patient_token.create_patient_token(patient_id: "patientId")
      #
      # @return [BridgeApi::PatientToken::Types::PatientTokenCreateV1Response]
      def create_patient_token(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/patient-token",
          body: BridgeApi::PatientToken::Types::PatientTokenCreateV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::PatientToken::Types::PatientTokenCreateV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
