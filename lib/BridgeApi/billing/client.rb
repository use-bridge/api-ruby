# frozen_string_literal: true

module BridgeApi
  module Billing
    class Client
      # @param client [BridgeApi::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [BridgeApi::EstimateCharges::Client]
      def estimate_charges
        @estimate_charges ||= BridgeApi::Billing::EstimateCharges::Client.new(client: @client)
      end

      # @return [BridgeApi::Fees::Client]
      def fees
        @fees ||= BridgeApi::Billing::Fees::Client.new(client: @client)
      end

      # @return [BridgeApi::SetupIntent::Client]
      def setup_intent
        @setup_intent ||= BridgeApi::Billing::SetupIntent::Client.new(client: @client)
      end
    end
  end
end
