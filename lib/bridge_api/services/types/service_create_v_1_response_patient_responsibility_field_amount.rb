# frozen_string_literal: true

module Bridge_api
  module Services
    module Types
      class ServiceCreateV1ResponsePatientResponsibilityFieldAmount < Internal::Types::Model
        field :total, -> { Integer }, optional: false, nullable: false

        field :fallback, -> { Integer }, optional: false, nullable: false

        field :deductible, -> { Integer }, optional: false, nullable: false

        field :deductible_type, -> { Bridge_api::Services::Types::ServiceCreateV1ResponsePatientResponsibilityFieldAmountFieldDeductibleType }, optional: true, nullable: false, api_name: "deductibleType"

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
