# frozen_string_literal: true

module BridgeApi
  module Search
    class Client
      # @param client [BridgeApi::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [BridgeApi::Search::Types::SearchPayerV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.search.payer_search(
      #     query: "query",
      #     limit: 1
      #   )
      #
      # @return [BridgeApi::Search::Types::SearchPayerV1Response]
      def payer_search(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/search/payers",
          body: BridgeApi::Search::Types::SearchPayerV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::Search::Types::SearchPayerV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
