# frozen_string_literal: true

module Bridge_api
  module Providers
    class Client
      # @param client [Bridge_api::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Submits one or more providers for credentialing intake. In live environments, this starts the provider
      # submission workflow and resolves provider names from the CMS NPI Registry. In sandbox, the endpoint is available
      # with the same request and response shape, but providers are created immediately without an external NPI registry
      # lookup; created providers use firstName `Sandbox` and lastName set to the submitted NPI.
      #
      # @param request_options [Hash]
      # @param params [Bridge_api::Providers::Types::ProviderPostV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.providers.submit_providers(providers: [{
      #     npi: "npi",
      #     email: "email",
      #     caqh_id: "caqhId",
      #     caqh_username: "caqhUsername",
      #     caqh_password: "caqhPassword"
      #   }, {
      #     npi: "npi",
      #     email: "email",
      #     caqh_id: "caqhId",
      #     caqh_username: "caqhUsername",
      #     caqh_password: "caqhPassword"
      #   }])
      #
      # @return [Bridge_api::Providers::Types::ProviderPostV1Response]
      def submit_providers(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/providers/submit",
          body: Bridge_api::Providers::Types::ProviderPostV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Providers::Types::ProviderPostV1Response.load(response.body))
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
      # @option params [Boolean, nil] :filter_active
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.providers.list_providers
      #
      # @return [Bridge_api::Providers::Types::ProvidersListV1Response]
      def list_providers(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["filter.active"] = params[:filter_active] if params.key?(:filter_active)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/providers",
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
          (response.body.to_s.empty? ? nil : Bridge_api::Providers::Types::ProvidersListV1Response.load(response.body))
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
      #   client.providers.get_provider(id: "id")
      #
      # @return [Bridge_api::Providers::Types::ProviderGetV1Response]
      def get_provider(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/providers/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Providers::Types::ProviderGetV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Bridge_api::Providers::Types::ProviderUpdateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.providers.update_provider(id: "id")
      #
      # @return [Bridge_api::Providers::Types::ProviderUpdateV1Response]
      def update_provider(request_options: {}, **params)
        params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = Bridge_api::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/providers/#{URI.encode_uri_component(params[:id].to_s)}",
          body: Bridge_api::Providers::Types::ProviderUpdateV1Request.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Bridge_api::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Bridge_api::Providers::Types::ProviderUpdateV1Response.load(response.body))
        else
          error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Bridge_api::Enrollment::Client]
      def enrollment
        @enrollment ||= Bridge_api::Providers::Enrollment::Client.new(client: @client)
      end
    end
  end
end
