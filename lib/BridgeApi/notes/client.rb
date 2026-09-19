# frozen_string_literal: true

module BridgeApi
  module Notes
    class Client
      # @param client [BridgeApi::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [BridgeApi::Notes::Types::NoteCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.notes.create_note(
      #     service_id: "serviceId",
      #     data: {},
      #     signature: {
      #       timestamp: "2024-01-15T09:30:00Z",
      #       provider_id: "providerId"
      #     }
      #   )
      #
      # @return [BridgeApi::Notes::Types::NoteCreateV1Response]
      def create_note(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/notes",
          body: BridgeApi::Notes::Types::NoteCreateV1Request.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::Notes::Types::NoteCreateV1Response.load(response.body))
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
      #   client.notes.get_note(id: "id")
      #
      # @return [BridgeApi::Notes::Types::NoteGetV1Response]
      def get_note(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/notes/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::Notes::Types::NoteGetV1Response.load(response.body))
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
      # @option params [String, nil] :filter_note_id
      # @option params [BridgeApi::Notes::Types::NoteAddendaListV1OrderCreatedAt, nil] :order_created_at
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.notes.list_note_addenda(id: "id")
      #
      # @return [BridgeApi::Notes::Types::NoteAddendaListV1Response]
      def list_note_addenda(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["filter.noteId"] = params[:filter_note_id] if params.key?(:filter_note_id)
        query_params["order.createdAt"] = params[:order_created_at] if params.key?(:order_created_at)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/api/notes/#{URI.encode_uri_component(params[:id].to_s)}/addenda",
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
          (response.body.to_s.empty? ? nil : BridgeApi::Notes::Types::NoteAddendaListV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [BridgeApi::Notes::Types::NoteAddendumCreateV1Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.notes.create_note_addendum(
      #     id: "id",
      #     data: {},
      #     signature: {
      #       timestamp: "2024-01-15T09:30:00Z",
      #       provider_id: "providerId"
      #     }
      #   )
      #
      # @return [BridgeApi::Notes::Types::NoteAddendumCreateV1Response]
      def create_note_addendum(request_options: {}, **params)
        params = BridgeApi::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = BridgeApi::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/api/notes/#{URI.encode_uri_component(params[:id].to_s)}/addenda",
          body: BridgeApi::Notes::Types::NoteAddendumCreateV1Request.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise BridgeApi::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : BridgeApi::Notes::Types::NoteAddendumCreateV1Response.load(response.body))
        else
          error_class = BridgeApi::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
