# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module V2
      class Client
        # @param client [Bridge_api::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Creates a ServiceEligibility, returns immediately in the `PENDING` status.
        #
        # @param request_options [Hash]
        # @param params [Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.service_eligibility.v_2.create_service_eligibility(
        #     service_type_id: "serviceTypeId",
        #     date_of_service: "2024-01-15T09:30:00Z",
        #     state: "AL"
        #   )
        #
        # @return [Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Response]
        def create_service_eligibility(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/service-eligibility/v2",
            body: Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Bridge_api::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Bridge_api::ServiceEligibility::V2::Types::ServiceEligibilityCreateV2Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
