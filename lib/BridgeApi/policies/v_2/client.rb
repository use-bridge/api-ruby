# frozen_string_literal: true

module BridgeApi
  module Policies
    module V2
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Creates a Policy, returning immediately with status of `PENDING`. Use the Get Policy API, or monitor webhooks,
        # to receive updates.
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Policies::V2::Types::PolicyCreateV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.policies.v_2.create_policy(
        #     person: {
        #       first_name: "firstName",
        #       last_name: "lastName",
        #       date_of_birth: "2024-01-15T09:30:00Z"
        #     },
        #     state: "AL",
        #     payer_id: "payerId"
        #   )
        #
        # @return [BridgeApi::Policies::V2::Types::PolicyCreateV2Response]
        def create_policy(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/policies/v2",
            body: BridgeApi::Policies::V2::Types::PolicyCreateV2Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Policies::V2::Types::PolicyCreateV2Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
