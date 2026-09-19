# frozen_string_literal: true

module BridgeApi
  module Billing
    module Fees
      class Client
        # @param client [BridgeApi::Internal::Http::RawClient]
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
        # @option params [String, nil] :filter_external_id
        # @option params [String, nil] :filter_patient_id
        # @option params [String, nil] :filter_service_id
        # @option params [String, nil] :filter_service_eligibility_id
        # @option params [BridgeApi::Billing::Fees::Types::FeesListV1FilterStatus, nil] :filter_status
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :limit
        #
        # @example
        #   client.billing.fees.list_fees
        #
        # @return [BridgeApi::Billing::Fees::Types::FeesListV1Response]
        def list_fees(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["filter.externalId"] = params[:filter_external_id] if params.key?(:filter_external_id)
          query_params["filter.patientId"] = params[:filter_patient_id] if params.key?(:filter_patient_id)
          query_params["filter.serviceId"] = params[:filter_service_id] if params.key?(:filter_service_id)
          query_params["filter.serviceEligibilityId"] = params[:filter_service_eligibility_id] if params.key?(:filter_service_eligibility_id)
          query_params["filter.status"] = params[:filter_status] if params.key?(:filter_status)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["limit"] = params[:limit] if params.key?(:limit)

          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "/api/fees/v2",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Billing::Fees::Types::FeesListV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # This endpoint can only be used after setting up the billing integration. Refer to the [billing integration
        # documentation](/documentation/integrations/billing/overview) for more details.
        #
        # This endpoint may return a `409` error response with one of these public `message` values:
        # - `Conflicting Fee exists`
        #
        # @param request_options [Hash]
        # @param params [BridgeApi::Billing::Fees::Types::FeeCreateV1Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.billing.fees.create_fee(
        #     patient_id: "patientId",
        #     type: "LATE_CANCELLATION"
        #   )
        #
        # @return [BridgeApi::Billing::Fees::Types::FeeCreateV1Response]
        def create_fee(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/fees/v2",
            body: BridgeApi::Billing::Fees::Types::FeeCreateV1Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Billing::Fees::Types::FeeCreateV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # This endpoint can only be used after setting up the billing integration. Refer to the [billing integration
        # documentation](/documentation/integrations/billing/overview) for more details.
        #
        # This endpoint may return a `409` error response with one of these public `message` values:
        # - `Invalid Fee Status`
        # - `Missing Customer`
        # - `Missing Customer Payment Method`
        # - `Payment Already Captured`
        # - `Payment has been Voided`
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
        #   client.billing.fees.capture_stripe_fee(id: "id")
        #
        # @return [BridgeApi::Billing::Fees::Types::FeeCaptureStripeV1Response]
        def capture_stripe_fee(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/fees/v2/#{URI.encode_uri_component(params[:id].to_s)}/capture/stripe",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Billing::Fees::Types::FeeCaptureStripeV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # This endpoint can only be used after setting up the billing integration. Refer to the [billing integration
        # documentation](/documentation/integrations/billing/overview) for more details.
        #
        # This endpoint may return a `409` error response with one of these public `message` values:
        # - `Invalid Fee Status`
        # - `Missing Captured Transaction`
        # - `Missing Customer`
        # - `Missing Payment Intent`
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
        #   client.billing.fees.refund_stripe_fee(id: "id")
        #
        # @return [BridgeApi::Billing::Fees::Types::FeeRefundStripeV1Response]
        def refund_stripe_fee(request_options: {}, **params)
          params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
          request = BridgeApi::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/fees/v2/#{URI.encode_uri_component(params[:id].to_s)}/refund/stripe",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise BridgeApi::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : BridgeApi::Billing::Fees::Types::FeeRefundStripeV1Response.load(response.body))
          else
            error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
