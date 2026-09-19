# frozen_string_literal: true

module Bridge_api
  module Billing
    module SetupIntent
      class Client
        # @param client [Bridge_api::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # This endpoint can only be used after setting up the billing integration. Refer to the [billing integration
        # documentation](/documentation/integrations/billing/overview) for more details.
        #
        # @param request_options [Hash]
        # @param params [Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Request]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.billing.setup_intent.create_stripe_setup_intent(patient_id: "patientId")
        #
        # @return [Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Response]
        def create_stripe_setup_intent(request_options: {}, **params)
          params = Bridge_api::Internal::Types::Utils.normalize_keys(params)
          request = Bridge_api::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "/api/integrations/stripe/setup-intent",
            body: Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Request.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Bridge_api::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Bridge_api::Billing::SetupIntent::Types::SetupIntentCreateStripeV1Response.load(response.body))
          else
            error_class = Bridge_api::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
