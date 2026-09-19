# frozen_string_literal: true

module Bridge_api
  module Payments
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
      # @option params [String, nil] :filter_patient_id
      # @option params [String, nil] :filter_service_id
      # @option params [Bridge_api::Payments::Types::PaymentsListV1FilterType, nil] :filter_type
      # @option params [Bridge_api::Payments::Types::PaymentsListV1OrderPaidAt, nil] :order_paid_at
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.payments.list_payments
      #
      # @return [Bridge_api::Payments::Types::PaymentsListV1Response]
      def list_payments(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["filter.patientId"] = params[:filter_patient_id] if params.key?(:filter_patient_id)
        query_params["filter.serviceId"] = params[:filter_service_id] if params.key?(:filter_service_id)
        query_params["filter.type"] = params[:filter_type] if params.key?(:filter_type)
        query_params["order.paidAt"] = params[:order_paid_at] if params.key?(:order_paid_at)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/payments",
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
          (response.body.to_s.empty? ? nil : Bridge_api::Payments::Types::PaymentsListV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Bridge_api::Payments::Types::PaymentCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payments.create_payment(
      #     service_id: "serviceId",
      #     paid_at: "2024-01-15T09:30:00Z",
      #     transaction_id: "transactionId",
      #     type: "PATIENT",
      #     amount: 1
      #   )
      #
      # @return [Bridge_api::Payments::Types::PaymentCreateV1Response]
      def create_payment(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/payments",
          body: Bridge_api::Payments::Types::PaymentCreateV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Payments::Types::PaymentCreateV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

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
      #   client.payments.get_payment(id: "id")
      #
      # @return [Bridge_api::Payments::Types::PaymentGetV1Response]
      def get_payment(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/payments/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Payments::Types::PaymentGetV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
