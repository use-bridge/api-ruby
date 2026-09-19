# frozen_string_literal: true

module Bridge_api
  module Providers
    module Enrollment
      class Client
        # @param client [Bridge_api::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the high-level enrollment status of a provider
        #
        # **Production only:** This endpoint is only available in Production and will not work in Sandbox.
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
        #   client.providers.enrollment.get_provider_enrollment_status(id: "id")
        #
        # @return [Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1Response]
        def get_provider_enrollment_status(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "/api/providers/#{URI.encode_uri_component(params[:id].to_s)}/enrollment-status",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Bridge_api::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Bridge_api::Providers::Enrollment::Types::ProviderEnrollmentStatusGetV1Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
