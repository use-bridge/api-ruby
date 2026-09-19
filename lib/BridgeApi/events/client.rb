# frozen_string_literal: true

module BridgeApi
  module Events
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
      # @option params [String, nil] :filter_event_type
      # @option params [String, nil] :filter_object_type
      # @option params [String, nil] :filter_object_id
      # @option params [BridgeApi::Events::Types::EventsListV1OrderCreatedAt, nil] :order_created_at
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.events.list_events
      #
      # @return [BridgeApi::Events::Types::EventsListV1Response]
      def list_events(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["filter.eventType"] = params[:filter_event_type] if params.key?(:filter_event_type)
        query_params["filter.objectType"] = params[:filter_object_type] if params.key?(:filter_object_type)
        query_params["filter.objectId"] = params[:filter_object_id] if params.key?(:filter_object_id)
        query_params["order.createdAt"] = params[:order_created_at] if params.key?(:order_created_at)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/events",
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
          (response.body.to_s.empty? ? nil : BridgeApi::Events::Types::EventsListV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
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
      #   client.events.get_event(id: "id")
      #
      # @return [BridgeApi::Events::Types::EventGetV1Response]
      def get_event(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/events/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::Events::Types::EventGetV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
