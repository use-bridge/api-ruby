# frozen_string_literal: true

module BridgeApi
  module Services
    module Types
      class ServicesListV1ResponseItemPatientResponsibilityFieldAmount < Internal::Types::Model
        field :total, -> { Integer }, optional: false, nullable: false

        field :fallback, -> { Integer }, optional: false, nullable: false

        field :deductible, -> { Integer }, optional: false, nullable: false

        field :deductible_type, -> { BridgeApi::Services::Types::ServicesListV1ResponseItemPatientResponsibilityFieldAmountFieldDeductibleType }, optional: true, nullable: false, api_name: "deductibleType"

        field :coinsurance, -> { Integer }, optional: false, nullable: false

        field :coinsurance_percent, -> { Integer }, optional: false, nullable: false, api_name: "coinsurancePercent"

        field :copayment, -> { Integer }, optional: false, nullable: false

        field :oop_fallback, -> { Integer }, optional: false, nullable: false, api_name: "oopFallback"

        field :oop_copayment, -> { Integer }, optional: false, nullable: false, api_name: "oopCopayment"

        field :oop_coinsurance, -> { Integer }, optional: false, nullable: false, api_name: "oopCoinsurance"

        field :oop_deductible, -> { Integer }, optional: false, nullable: false, api_name: "oopDeductible"
      end
    end
  end
end
