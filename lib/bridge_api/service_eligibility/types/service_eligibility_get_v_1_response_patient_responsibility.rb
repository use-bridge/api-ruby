# frozen_string_literal: true

module Bridge_api
  module ServiceEligibility
    module Types
      class ServiceEligibilityGetV1ResponsePatientResponsibility < Internal::Types::Model
        field :total, -> { Integer }, optional: false, nullable: false

        field :fallback, -> { Integer }, optional: false, nullable: false

        field :deductible, -> { Integer }, optional: false, nullable: false

        field :deductible_type, -> { Bridge_api::ServiceEligibility::Types::ServiceEligibilityGetV1ResponsePatientResponsibilityFieldDeductibleType }, optional: true, nullable: false, api_name: "deductibleType"

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
