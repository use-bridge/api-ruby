# frozen_string_literal: true

module Bridge_api
  module Services
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
      #
      # @example
      #   client.services.stream_service(id: "id")
      #
      # @return [untyped]
      def stream_service(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}/stream",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :filter_service_type_id
      # @option params [String, nil] :filter_patient_id
      # @option params [Array[Bridge_api::Services::Types::ServicesListV1FilterStatusElement], nil] :filter_status
      # @option params [Array[String], nil] :filter_provider_id
      # @option params [Bridge_api::Services::Types::ServicesListV1OrderCreatedAt, nil] :order_created_at
      # @option params [Bridge_api::Services::Types::ServicesListV1OrderDateOfService, nil] :order_date_of_service
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.services.list_services
      #
      # @return [Bridge_api::Services::Types::ServicesListV1Response]
      def list_services(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["filter.serviceTypeId"] = params[:filter_service_type_id] if params.key?(:filter_service_type_id)
        query_params["filter.patientId"] = params[:filter_patient_id] if params.key?(:filter_patient_id)
        query_params["filter.status"] = params[:filter_status] if params.key?(:filter_status)
        query_params["filter.providerId"] = params[:filter_provider_id] if params.key?(:filter_provider_id)
        query_params["order.createdAt"] = params[:order_created_at] if params.key?(:order_created_at)
        query_params["order.dateOfService"] = params[:order_date_of_service] if params.key?(:order_date_of_service)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/services",
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
          (response.body.to_s.empty? ? nil : Bridge_api::Services::Types::ServicesListV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Bridge_api::Services::Types::ServiceCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.services.create_service(
      #     patient_id: "patientId",
      #     date_of_service: "2024-01-15T09:30:00Z",
      #     service_type_id: "serviceTypeId",
      #     location: {
      #       state: "AL"
      #     },
      #     provider_id: "providerId"
      #   )
      #
      # @return [Bridge_api::Services::Types::ServiceCreateV1Response]
      def create_service(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/services",
          body: Bridge_api::Services::Types::ServiceCreateV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Services::Types::ServiceCreateV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Fetch a Service by `id` or `externalId`
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
      #   client.services.get_service(id: "id")
      #
      # @return [Bridge_api::Services::Types::ServiceGetV1Response]
      def get_service(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Services::Types::ServiceGetV1Response.load(response.body))
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
      #   client.services.revalidate_service(id: "id")
      #
      # @return [untyped]
      def revalidate_service(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}/revalidate",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
      #   client.services.bill_service(id: "id")
      #
      # @return [untyped]
      def bill_service(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}/bill",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
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
      #   client.services.get_service_note(id: "id")
      #
      # @return [Bridge_api::Services::Types::ServiceNoteGetV1Response]
      def get_service_note(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}/note",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Services::Types::ServiceNoteGetV1Response.load(response.body))
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
      #   client.services.delete_service_note(id: "id")
      #
      # @return [untyped]
      def delete_service_note(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "/api/services/#{URI.encode_uri_component(params[:id].to_s)}/note",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # @return [Bridge_api::Payments::Client]
      def payments
        @payments ||= Bridge_api::Services::Payments::Client.new(client: @client)
      end

      # @return [Bridge_api::V2::Client]
      def v_2
        @v_2 ||= Bridge_api::Services::V2::Client.new(client: @client)
      end
    end
  end
end
