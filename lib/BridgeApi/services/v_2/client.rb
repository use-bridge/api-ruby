# frozen_string_literal: true

module BridgeApi
  module Services
    module V2
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Creates a new `Service`, creates the `ServiceEligibility` in status `PENDING`
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Services::V2::Types::ServiceCreateV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.services.v_2.create_service(
        #     patient_id: "patientId",
        #     date_of_service: "2024-01-15T09:30:00Z",
        #     service_type_id: "serviceTypeId",
        #     location: {
        #       state: "AL"
        #     },
        #     provider_id: "providerId"
        #   )
        #
        # @return [BridgeApi::Services::V2::Types::ServiceCreateV2Response]
        def create_service(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/services/v2",
            body: BridgeApi::Services::V2::Types::ServiceCreateV2Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Services::V2::Types::ServiceCreateV2Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @param request_options [Hash]
        # @param params [BridgeApi::Services::V2::Types::ServiceCancelV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.services.v_2.cancel_service(id: "id")
        #
        # @return [BridgeApi::Services::V2::Types::ServiceCancelV2Response]
        def cancel_service(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[id]
          body_params = params.except(*path_param_names)

          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/services/v2/#{URI.encode_uri_component(params[:id].to_s)}/cancel",
            body: BridgeApi::Services::V2::Types::ServiceCancelV2Request.new(body_params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Services::V2::Types::ServiceCancelV2Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates an existing `Service`
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Services::V2::Types::ServiceUpdateV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.services.v_2.update_service(id: "id")
        #
        # @return [BridgeApi::Services::V2::Types::ServiceUpdateV2Response]
        def update_service(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[id]
          body_params = params.except(*path_param_names)

          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/services/v2/#{URI.encode_uri_component(params[:id].to_s)}",
            body: BridgeApi::Services::V2::Types::ServiceUpdateV2Request.new(body_params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Services::V2::Types::ServiceUpdateV2Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
