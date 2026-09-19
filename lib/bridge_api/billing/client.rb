# frozen_string_literal: true

module Bridge_api
  module Billing
    class Client
      # @param client [Bridge_api::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Bridge_api::EstimateCharges::Client]
      def estimate_charges
        @estimate_charges ||= Bridge_api::Billing::EstimateCharges::Client.new(client: @client)
      end

      # @return [Bridge_api::Fees::Client]
      def fees
        @fees ||= Bridge_api::Billing::Fees::Client.new(client: @client)
      end

      # @return [Bridge_api::SetupIntent::Client]
      def setup_intent
        @setup_intent ||= Bridge_api::Billing::SetupIntent::Client.new(client: @client)
      end
    end
  end
end
