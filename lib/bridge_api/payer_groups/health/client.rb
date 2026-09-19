# frozen_string_literal: true

module Bridge_api
  module PayerGroups
    module Health
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
        # @option params [Bridge_api::PayerGroups::Health::Types::HealthEventsListV1OrderEventAt, nil] :order_event_at
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :limit
        #
        # @example
        #   client.payer_groups.health.list_health_events(id: "id")
        #
        # @return [Bridge_api::PayerGroups::Health::Types::HealthEventsListV1Response]
        def list_health_events(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["order.eventAt"] = params[:order_event_at] if params.key?(:order_event_at)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["limit"] = params[:limit] if params.key?(:limit)

          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "/api/payer-groups/#{URI.encode_uri_component(params[:id].to_s)}/health/events",
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
            (response.body.to_s.empty? ? nil : Bridge_api::PayerGroups::Health::Types::HealthEventsListV1Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
