# frozen_string_literal: true

module Bridge_api
  module Patients
    module V2
      class Client
        # @param client [Bridge_api::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @param request_options [Hash]
        # @param params [Bridge_api::Patients::V2::Types::PatientCreateV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.patients.v_2.create_patient(
        #     first_name: "firstName",
        #     last_name: "lastName",
        #     email: "email",
        #     date_of_birth: "2024-01-15T09:30:00Z"
        #   )
        #
        # @return [Bridge_api::Patients::V2::Types::PatientCreateV2Response]
        def create_patient(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/patients/v2",
            body: Bridge_api::Patients::V2::Types::PatientCreateV2Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Bridge_api::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Bridge_api::Patients::V2::Types::PatientCreateV2Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Resolves a Patient by either `id` or `externalId`
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
        #   client.patients.v_2.get_patient(id: "id")
        #
        # @return [Bridge_api::Patients::V2::Types::PatientGetV2Response]
        def get_patient(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "/api/patients/v2/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Bridge_api::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Bridge_api::Patients::V2::Types::PatientGetV2Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
